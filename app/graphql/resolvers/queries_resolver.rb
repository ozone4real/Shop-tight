# frozen_string_literal: true

module Resolvers
  class QueriesResolver < BaseResolver
    type [Types::ProductType], null: false
    argument :sub_category_id, ID, required: true

    def resolve(sub_category_id:)
      RecordLoader.for(Product).load(sub_category_id)
    end
  end
end
