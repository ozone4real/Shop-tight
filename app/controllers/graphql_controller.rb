# frozen_string_literal: true

class GraphqlController < ApplicationController
  # after_action proc {puts Thread.current.name, Thread.list}, only: :execute
  def execute
    variables = ensure_hash(params[:variables])
    query = params[:query]
    operation_name = params[:operationName]
    context = {
      # Query context goes here
      current_user: current_user,
      request: request
    }
    result = ShopTightSchema.execute(query, variables: variables, context: context, operation_name: operation_name)
    render json: result
  end

  private

  def current_user
    return unless request.headers['HTTP_X_AUTH_TOKEN'].present?

    decoded_token = JsonWebToken.decode(request.headers['HTTP_X_AUTH_TOKEN'])
    user ||= User.find(decoded_token[:id]) if decoded_token
  end

  # Handle form data, JSON body, or a blank value
  def ensure_hash(ambiguous_param)
    case ambiguous_param
    when String
      if ambiguous_param.present?
        ensure_hash(JSON.parse(ambiguous_param))
      else
        {}
      end
    when Hash, ActionController::Parameters
      ambiguous_param
    when nil
      {}
    else
      raise ArgumentError, "Unexpected parameter: #{ambiguous_param}"
    end
  end

  def handle_error_in_development(e)
    logger.error e.message
    logger.error e.backtrace.join("\n")

    render json: { error: { message: e.message, backtrace: e.backtrace }, data: {} }, status: 500
  end
end
