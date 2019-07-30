# frozen_string_literal: true

module Types
  class TransactionCompletedResponseType < BaseObject
    field :error, Boolean, null: true
    field :transaction_complete, Boolean, null: true
    field :data, TransactionCompletedDataType, null: true
  end
end
