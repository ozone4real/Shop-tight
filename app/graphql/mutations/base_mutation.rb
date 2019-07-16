# frozen_string_literal: true

module Mutations
  class BaseMutation < GraphQL::Schema::RelayClassicMutation
    input_object_class Types::BaseInputObject
  end
end
