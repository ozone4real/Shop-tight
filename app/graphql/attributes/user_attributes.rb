# frozen_string_literal: true

module Attributes
  class UserAttributes < Types::BaseInputObject
    def self.user_args(required_value:)
      argument :email, String, required: required_value && true
      argument :first_name, String, required: required_value && true
      argument :last_name, String, required: required_value && true
      argument :password, String, required: required_value && true
      argument :address, String, required: required_value && true
      argument :city, String, required: required_value && false
      argument :state, String, required: required_value && false
      argument :country, String, required: required_value && false
      argument :phone, String, required: required_value && true
      argument :postal_code, String, required: required_value && false
      self
    end
  end
end
