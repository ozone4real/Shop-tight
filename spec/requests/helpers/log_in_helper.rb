require 'rails_helper'

module LoginHelper
  extend ActiveSupport::Concern
  included do
    let!(:query) do
      proc { |name, auth|
        <<-GQL
        mutation #{name}($user: #{name.camelize}Input!) {
          #{name}(input: $user) {
            user {
              firstName
              lastName
              email
              isAdmin
            },
            #{auth && 'token'}
          }
        }
        GQL
      }
    end

    before do
      @right_credentials = {
        'user' => {
          'email' => 'mercy.ike@andela.com',
          'password' => 'ozone4real'
        }
      }

      @wrong_credentials = {
        'user' => {
          'email' => 'chikurdi@andela.com',
          'password' => 'ozone4real'
        }
      }
      
      @variables = {
        "user" => {
          "userAttributes" => {
            "firstName" => "Chimdi",
            "city" => "Alaba"
          }
        }
      }
      create(:user)
      post '/graphql', params: { 'query' => query['signInUser', true], 'variables' => @right_credentials }
      @token = JSON.parse(response.body)["data"]["signInUser"]["token"]
    end
  end
end