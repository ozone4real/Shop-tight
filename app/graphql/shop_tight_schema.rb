# frozen_string_literal: true

class ShopTightSchema < GraphQL::Schema
  default_max_page_size 100
  mutation(Types::MutationType)
  query(Types::QueryType)

  use GraphQL::Batch
end
