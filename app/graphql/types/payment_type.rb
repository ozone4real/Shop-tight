module Types
  class PaymentType < BaseObject
    field :payment_type, String, null: false
    field :description, String, null: false
    field :id, ID, null: false
    field :picture, String, null: true
  end  
end