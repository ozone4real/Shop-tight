# frozen_string_literal: true

module Types
  class ProductSizeOptions < BaseEnum
    value 'portable',
          'Small products that can be carried about. E.g: phones, clothes, accessories'
    value 'large',
          'Products that require an automobile to transport, e.g: 32 inch TV, Generators'
    value 'bulky',
          'Products that are extremely large, e.g: matresses'
  end
end
