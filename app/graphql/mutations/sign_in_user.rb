module Mutations
  class SignInUser < BaseMutation
    argument :email, String, required: true
    argument :password, String, required: true

    field :user, Types::UserType, null: true
    field :token, String, null: true

    def resolve(**args)
      user = User.find_by(email: args[:email])
      unless user && user.authenticate(args[:password])
        raise GraphQL::ExecutionError.new("Invalid email or password")
      end
      token = JsonWebToken.encode({email: user.email, id: user.id})
      {
        user: user,
        token: token
      }
    end
  end
end