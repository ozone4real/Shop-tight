# frozen_string_literal: true

module Mutations
  class UpdateOrderDetails < BaseMutation
    argument :order_detail_attributes, Attributes::OrderDetailAttributes, required: true
    field :order_detail, Types::OrderDetailType, null: false

    def resolve(**args)
      authorize_admin
      args = args[:order_detail_attributes].to_h
      order_detail = OrderDetail.find(args[:id])
      args.delete(:id)
      order_detail.update!(args)
      { order_detail: order_detail }
    end
  end
end
