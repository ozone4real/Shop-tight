# frozen_string_literal: true

module ExceptionHandler
  extend ActiveSupport::Concern

  class InvalidToken < StandardError
  end

  class UnAuthorized < StandardError
  end
  class InvalidCredentials < StandardError
  end

  class BadRequest < StandardError
  end

  class EmptyResource < StandardError
  end

  included do
    rescue_from StandardError do |e|
      raise e unless Rails.env.development?

      handle_error_in_development e
    end

    rescue_from ActiveRecord::RecordNotFound do |e|
      render json: { data: nil, errors: [{ message: e.message }] }, status: :not_found
    end

    rescue_from ActiveRecord::RecordInvalid do |e|
      render json: { data: nil, errors: [{ message: "Invalid input: #{e.record.errors.full_messages.join(', ')}" }] }, status: :unprocessable_entity
    end

    rescue_from ExceptionHandler::BadRequest do |e|
      render json: { data: nil, errors: [{ message: e.message }] }, status: 400
    end
    rescue_from RaveServerError do |e|
      render json: { data: nil,
         errors: [{ message: "Your payment could not be processed at the moment, try again later" }] },
          status: 400
      p e
    end

    rescue_from ExceptionHandler::InvalidToken, ExceptionHandler::InvalidCredentials do |e|
      render json: { data: nil, errors: [{ message: e.message }] }, status: 401
    end

    rescue_from ExceptionHandler::UnAuthorized do |e|
      render json: { data: nil, errors: [{ message: e.message }] }, status: 403
    end
    rescue_from ActiveRecord::RecordNotUnique do |e|
      render json: { data: nil, errors: [{ message: e.message }] }, status: 409
    end

    rescue_from ExceptionHandler::EmptyResource do |e|
      render json: { data: nil, errors: [{ message: e.message }] }, status: 200
    end
  end
end
