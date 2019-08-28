# frozen_string_literal: true

require 'rails_helper'

describe "Products", type: :request do
  include QueriesHelper
  context "Create product" do
    before do
      @query = <<-GQL
       mutation createProduct($product: CreateProductInput!) {
        createProduct(input: $product) {
          product {
            productName,         
          },
          productDetails {
            size
          }
        }
      }
      GQL

      @variables = {
        "product" => {
          "productAttributes" => {
            "subCategoryId" => @sub_category.id,
            "brand" => "Nokia",
            "productName" => "Nokia torch",
            "productDescription" => "Basic phone with Radio",
            "productSize" => "portable"
          },
          "productDetailAttributes" => [
            {
              "color" => "black",
              "price" => 2000,
              "quantityInStock" => 7
            }
          ]
        }
      }
    end
    it "creates a product" do
      post '/graphql', params: {query: @query, variables: @variables}.to_json,
       headers: { "CONTENT_TYPE" => "application/json", "x-auth-token" => @admin_token }
      expect(response).to have_http_status(200)
      expect(JSON.parse(response.body)['data']).to be_truthy
    end
  end
end

