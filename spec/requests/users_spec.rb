# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Users', type: :request do
  let!(:query) do
    proc { |name|
      <<-GQL
      mutation #{name}($user: #{name.camelize}Input!) {
        #{name}(input: $user) {
          user {
            firstName
            lastName
            email
            isAdmin
          },
          token
        }
      }
      GQL
    }
  end

  describe 'create user test' do
    let!(:variables) do
      {
        'user' => {
          'userAttributes' => attributes_for(:user)
            .stringify_keys.transform_keys { |key| key.camelize(:lower) }
        }
      }
    end
    it 'signs up a user to the app' do
      post '/graphql', params: { 'query' => query['createUser'], 'variables' => variables }
      expect(response).to have_http_status(200)
      expect(JSON.parse(response.body)['data']).to be_truthy
      expect(JSON.parse(response.body)['errors']).to be_falsy
    end

    it 'fails if some required fields are missing' do
      variables['user']['userAttributes'].delete('email')
      post '/graphql', params: { 'query' => query['createUser'], 'variables' => variables }
      expect(response).to have_http_status(422)
      expect(JSON.parse(response.body)['data']).to be_falsy
      expect(JSON.parse(response.body)['errors']).to be_truthy
    end
  end

  describe 'login in test' do
    before do
      create(:user)
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
    end

    it 'logs in a user into the app' do
      post '/graphql', params: { 'query' => query['signInUser'], 'variables' => @right_credentials }
      expect(response).to have_http_status(200)
    end

    it 'fails if wrong credentials were provided' do
      post '/graphql', params: { 'query' => query['signInUser'], 'variables' => @wrong_credentials }
      expect(response).to have_http_status(401)
    end
  end
end
