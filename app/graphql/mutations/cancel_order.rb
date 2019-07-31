# frozen_string_literal: true

module Mutations
  class CancelOrder < BaseMutation
    argument :id, ID, required: true
    field :message, String, null: true
    field :order_detail, Types::OrderDetailType, null: true

    def resolve(id:)
      authorize_user
      order_detail = OrderDetail.joins(:order)
      .find_by!(id: id, 'orders.user' => context[:current_user])
      if order_detail.status == 'cancelled' || order_detail.status == 'delivered'
        raise ExceptionHandler::BadRequest, "Can't cancel an Order that is already delivered or cancelled"
      end

      order_detail.update!(status: 'cancelled')
      order_detail.product_detail.quantity_in_stock += order_detail.quantity
      order_detail.product_detail.quantity_sold -= order_detail.quantity
      order_detail.product_detail.product_available = true
      order_detail.product_detail.save!
      { order_detail: order_detail, message: 'Order successfully cancelled' }
    end
  end
end
