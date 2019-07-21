# frozen_string_literal: true

module Types
  class DeliveryStatus < BaseEnum
    value 'awaiting_delivery', 'Order just placed, not yet shipped'
    value 'transiting', 'Order transiting'
    value 'delivered', 'Order delivered to the user'
    value 'cancelled', 'Order cancelled by user'
  end
end
