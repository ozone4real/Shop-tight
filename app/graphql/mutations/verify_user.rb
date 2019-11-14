module Mutations
  class VerifyUser < BaseMutation
    argument :token, String, required: true
    field :token, String, null: false
    
    def resolve(token:)
      decoded_token = JsonWebToken.decode(token)
      raise ExceptionHandler::InvalidToken.new("Invalid or expired token") unless decoded_token
      user = User.find(decoded_token[:id])
      user.update!({ verified: true })
      token = JsonWebToken.encode(email: user.email, id: user.id)
      return { token: token }
    end
  end  
end