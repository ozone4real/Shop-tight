# frozen_string_literal: true

require 'rails_helper'

describe 'Create Category Test', type: :request do
  include QueriesHelper
  before do
    @query = <<-GQL
      mutation createCategory($category: CreateCategoryInput!) {
        createCategory(input: $category) {
          category {
            categoryName
            categoryDescription
            urlKey
          }
        }
      }
    GQL

    @variables = {
      'category' => {
        'categoryAttributes' => {
          'categoryName' => "Men's shoes",
          'categoryDescription' => "Men's shoes of various sizes"
        }
      }
    }
  end
  it 'creates a category' do
    post '/graphql', params: { query: @query, variables: @variables },
                     headers: { "x-auth-token": @admin_token }
    expect(response).to have_http_status(200)
    expect(JSON.parse(response.body)['data']).to be_truthy
  end
end
