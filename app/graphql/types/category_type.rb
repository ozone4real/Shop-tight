module Types
  class CategoryType < Types::BaseObject
    field :id, ID, null: true
    field :category_name, String, null: false
    field :category_description, String, null: false
    field :picture, String, null: true
    field :products, [ProductType], null: false
  end
end
