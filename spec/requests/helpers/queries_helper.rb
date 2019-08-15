# frozen_string_literal: true

require 'rails_helper'

module QueriesHelper
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

      @admin_credentials = {
        'user' => {
          'email' => 'shoptightadmin@gmail.com',
          'password' => 'ozone4real'
        }
      }

      @right_credentials = {
        'user' => {
          'email' => 'mercy.ike@andela.com',
          'password' => 'ozone4real'
        }
      }

      @wrong_credentials = {
        'user' => {
          'email' => 'djdjdririir@gmail.com',
          'password' => 'ozone4real'
        }
      }

      @variables = {
        'user' => {
          'userAttributes' => {
            'firstName' => 'Chimdi',
            'city' => 'Alaba'
          }
        }
      }

      @admin = create(:admin)
      @category = create(:category, category_name: "ekeke")
      @sub_category = create(:sub_category, category_id: @category.id)
      3.times do |i|
        product = create(:product, category: @category, sub_category: @sub_category, user: @admin, product_name: "dkkkkd" + i.to_s)
        create(:product_detail, product: product, quantity_in_stock: 2)
      end

      post '/graphql', params: { 'query' => query['signInUser', true], 'variables' =>  @admin_credentials}
      @admin_token = JSON.parse(response.body)['data']['signInUser']['token']
      @user = create(:user, verified: true)
      post '/graphql', params: { 'query' => query['signInUser', true], 'variables' => @right_credentials }
      @user_token = JSON.parse(response.body)['data']['signInUser']['token']
    end
  end
end
