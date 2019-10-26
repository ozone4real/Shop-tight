# frozen_string_literal: true

require 'rails_helper'

describe 'Product test', type: :request do
  include QueriesHelper
  context 'fetch products' do
    before do
      @product_collection_query = <<-GQL
      {
        productCollection(page: 1, limit: 5, sortParam: "discount") {
            id
            brand
            productName
            productDetails {
                id
            }
          }
        }
      GQL

      product = create(:product, sub_category: @sub_category, category: @category, user: @admin, product_name: 'dkkkkdkkjkhh')
      product_detail = create(:product_detail, product: product, quantity_in_stock: 2)
    end
    it 'fetches multiple products' do
      post '/graphql', params: { query: @product_collection_query }
      expect(response).to have_http_status(200)
      expect(JSON.parse(response.body)['data']['productCollection']).to be_an(Array)
      expect(JSON.parse(response.body)['data']['productCollection'].size).not_to be(0)
    end
  end
end
