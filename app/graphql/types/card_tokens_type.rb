# frozen_string_literal: true

module Types
  class CardTokensType < BaseObject
    field :embedtoken, String, null: true
    field :shortcode, String, null: true
    field :expiry, String, null: true
  end
end
