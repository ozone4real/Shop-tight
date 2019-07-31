# frozen_string_literal: true

module Mutations
  class InitiateCardPayment < BaseMutation
    argument :cardno, String, required: true

    argument :cvv, String, required: true

    argument :expirymonth, String, required: true

    argument :expiryyear, String, required: true

    argument :pin, String, required: true

    field :charge_response, Types::InitiateChargeResponseType, null: false

    def resolve(**args)
      authorize_user
      handle_empty_cart
      rave = RaveRuby.new(ENV['RAVE_PUBLIC_KEY'], ENV['RAVE_SECRET_KEY'], Rails.env.production?)
      card = Card.new(rave)
      user = context[:current_user]
      payload = args.stringify_keys.merge('IP' => context[:ip],
                                          'amount' => total_price,
                                          'firstname' => user.first_name,
                                          'lastname' => user.last_name,
                                          'email' => user.email,
                                          'phonenumber' => user.phone)

      response = card.initiate_charge(payload)
      suggested_auth = response['suggestedAuth']
      if suggested_auth
        response = card.initiate_charge(updated_payload(card, user))
      end
      response.transform_keys!(&:underscore)
      { charge_response: response }
    end

    private

    def updated_payload(card, user)
      if card.get_auth_type(suggested_auth) == :pin
        updated_payload = card.update_payload(suggested_auth, payload, pin: args[:pin])
      elsif card.get_auth_type(suggested_auth) == :address
        card.update_payload(suggested_auth, payload,
                            address: {
                              'billingzip' => user.postal_code,
                              'billingcity' => user.city,
                              'billingaddress' => user.address,
                              'billingstate' => user.state,
                              'billingcountry' => user.country
                            })
      end
    end
  end
end
