# frozen_string_literal: true

require 'rails_helper'

describe 'User', type: :request do
  include QueriesHelper
  context 'create user test' do
    let!(:variables) do
      {
        'user' => {
          'userAttributes' => attributes_for(:user, email: 'chahdhdhh@gmail.com')
            .stringify_keys.transform_keys { |key| key.camelize(:lower) }
        }
      }
    end
    it 'signs up a user to the app' do
      post '/graphql', params: { 'query' => query['createUser', true], 'variables' => variables }
      expect(response).to have_http_status(200)
      expect(JSON.parse(response.body)['data']).to be_truthy
      expect(JSON.parse(response.body)['errors']).to be_falsy
    end

    it 'fails if some required fields are missing' do
      variables['user']['userAttributes'].delete('email')
      post '/graphql', params: { 'query' => query['createUser', true], 'variables' => variables }
      expect(response).to have_http_status(422)
      expect(JSON.parse(response.body)['data']).to be_falsy
      expect(JSON.parse(response.body)['errors']).to be_truthy
    end
  end

  context 'login in test' do
    it 'logs in a user into the app' do
      expect(response).to have_http_status(200)
    end

    it 'fails if wrong credentials were provided' do
      post '/graphql', params: { 'query' => query['signInUser', true], 'variables' => @wrong_credentials }
      expect(response).to have_http_status(401)
    end
  end

  context 'update user test' do
    it "updates a user's details" do
      post '/graphql', params: { 'query' => query['updateUser'],
                                 'variables' => @variables }, headers: { "x-auth-token" => @user_token }
      expect(response).to have_http_status(200)
      expect(JSON.parse(response.body)['data']['updateUser']['user'])
        .to include('firstName' => 'Chimdi')
    end
  end
end
