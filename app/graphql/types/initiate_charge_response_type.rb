# frozen_string_literal: true

module Types
  class InitiateChargeResponseType < BaseObject
    field :error, Boolean, null: true
    field :status, String, null: true
    field :flwRef, String, null: true
    field :txRef, String, null: true
    field :charge_response_message, String, null: true
    field :authurl, String, null: true
    field :suggested_auth, String, null: true
    field :charge_response_code, String, null: true
    field :validation_required, Boolean, null: true
  end
end
