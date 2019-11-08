# frozen_string_literal: true

module Attributes
  module UserAttributes
    class UserAttributesForCreate < Types::BaseInputObject
      argument :email, String, required: true
      argument :first_name, String, required: true
      argument :last_name, String, required: true
      argument :password, String, required: true
      argument :address, String, required: false
      argument :city, String, required: false
      argument :state, String, required: false
      argument :country, String, required: false
      argument :phone, String, required: false
      argument :postal_code, String, required: false
    end
    class UserAttributesForUpdate < Types::BaseInputObject
      argument :email, String, required: false
      argument :first_name, String, required: false
      argument :last_name, String, required: false
      argument :address, String, required: false
      argument :city, String, required: false
      argument :state, String, required: false
      argument :country, String, required: false
      argument :phone, String, required: false
      argument :postal_code, String, required: false
    end
  end
end
