module Mutations
  class CreateUser < BaseMutation
    argument :user_attributes, Attributes::UserAttributes, required: true
    field :user, Types::UserType, null: true
    field :token, String, null: false

    def resolve(**args)
      user = User.create!(args[:user_attributes].to_h)
      token = JsonWebToken.encode({email: user.email, id: user.id})
      {user: user, token: token}
    rescue ActiveRecord::RecordInvalid => e
      GraphQL::ExecutionError.new("Invalid input: #{e.record.errors.full_messages.join(', ')}")
    end 
  end 
end