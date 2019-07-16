module Attributes
  class UserAttributes < Types::BaseInputObject
    argument :email, String, required: true
    argument :first_name, String, required: true
    argument :last_name, String, required: true
    argument :password, String, required: true
    argument :address, String, required: true
    argument :city, String, required: true
    argument :state, String, required: true
    argument :country, String, required: false
    argument :phone, String, required: true
    argument :postal_code, String, required: false
  end  
end