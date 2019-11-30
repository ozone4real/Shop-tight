# frozen_string_literal: true

module Types
  class OrderOptions < BaseEnum
    value 'desc',
          'Sort in descending order'
    value 'asc',
          'Sort in ascending order'
  end
end
