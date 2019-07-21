# frozen_string_literal: true

module Mutations
  class ClearCart < GraphQL::Function
    type GraphQL::STRING_TYPE

    def call(_obj, _args, ctx)
      raise ExceptionHandler::InvalidToken, 'Token verification failed' unless ctx[:current_user]

      cart = Cart.where(user_id: ctx[:current_user].id)
      cart.destroy_all
      'Cart successfully cleared'
    end
  end
end
