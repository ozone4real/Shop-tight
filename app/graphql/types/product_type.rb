module Types
  class ProductType < Types::BaseObject
    field :id, ID, null: true
    field :product_name, String, null: false
    field :product_description, String, null: false
    field :price, Integer, null: false
    field :discount, Integer, null: true
    field :quantity_in_stock, Integer, null: false
    field :product_available, Boolean, null: false
    field :picture, String, null: false
    field :unit_weight, String, null: true
    field :category, CategoryType, null: true
  end
end
