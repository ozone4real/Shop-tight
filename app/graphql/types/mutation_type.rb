# frozen_string_literal: true

module Types
  class MutationType < BaseObject
    # field :create_product_detail, mutation: Mutations::CreateProductDetail
    field :remove_product_from_cart, mutation: Mutations::RemoveProductFromCart
    field :add_product_to_cart, mutation: Mutations::AddProductToCart
    field :create_product, mutation: Mutations::CreateProduct
    field :create_category, mutation: Mutations::CreateCategory
    field :create_user, mutation: Mutations::CreateUser
    field :sign_in_user, mutation: Mutations::SignInUser
    field :create_payment_option, mutation: Mutations::CreatePaymentOption
    field :create_order_without_payment, mutation: Mutations::CreateOrderWithoutPayment
    field :update_user, mutation: Mutations::UpdateUser
    field :initiate_card_payment, mutation: Mutations::InitiateCardPayment
    field :validate_payment_and_create_order, mutation: Mutations::ValidatePaymentAndCreateOrder
    field :update_order, mutation: Mutations::UpdateOrder
    field :update_order_details, mutation: Mutations::UpdateOrderDetails
    field :cancel_order, mutation: Mutations::CancelOrder
    field :create_sub_category, mutation: Mutations::CreateSubCategory
    field :update_product, mutation: Mutations::UpdateProduct
    field :update_product_detail, mutation: Mutations::UpdateProductDetail
    field :update_category, mutation: Mutations::UpdateCategory
    field :update_sub_category, mutation: Mutations::UpdateSubCategory
    field :update_cart_quantity, mutation: Mutations::UpdateCartQuantity
    field :verify_user, mutation: Mutations::VerifyUser
  end
end