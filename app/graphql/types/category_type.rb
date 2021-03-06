# frozen_string_literal: true

module Types
  class CategoryType < BaseObject
    field :id, ID, null: false
    field :category_name, String, null: false
    field :category_description, String, null: false
    field :images, [String], null: true, resolve: lambda { |obj, _args, ctx|
                                                    obj.images(ctx[:request].host_with_port)
                                                  }
    field :url_key, String, null: false
    field :sub_categories, [SubCategoryType], null: false
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
  end
end
