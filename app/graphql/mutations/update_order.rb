# frozen_string_literal: true

module Mutations
  class UpdateOrder < BaseMutation
    argument :payment_made, Boolean, required: false
    argument :id, ID, required: false
    field :order, Types::OrderType, null: true

    def resolve(id:, payment_made:)
      authorize_admin
      order = Order.find(id)
      unless order.payment_made
        order = Order.update(id, payment_made: payment_made, payment_date: payment_made && DateTime.current)
      end
      { order: order }
    end
  end
end
