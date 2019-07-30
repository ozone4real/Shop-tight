# frozen_string_literal: true

module Types
  class CardType < BaseObject
    field :expirymonth, String, null: true
    field :expiryyear, String, null: true
    field :cardBIN, String, null: true
    field :last4digits, String, null: true
    field :brand, String, null: true
    field :issuing_country, String, null: true
    field :card_tokens, [CardTokensType], null: true
    field :type, String, null: true
    field :life_time_token, String, null: true
  end
end
