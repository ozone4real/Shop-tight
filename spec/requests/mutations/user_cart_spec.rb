require 'rails_helper'

describe "UserCart", type: :request do
  include QueriesHelper
  describe "cart actions" do
    before do
      product = create(:product, category: @category, sub_category: @sub_category, user: @admin )
      @product_detail = create(:product_detail, product: product, quantity_in_stock: 2)

      @query = proc {|name, action, options|
        <<-GQL
        mutation {
         #{name}(input: {productDetailId: "#{@product_detail.id}" #{options && ", #{options}"}}){
            #{action} {
                quantity,
                productDetail {
                product {
                    productName,
                    category {
                        categoryName
                    }
                }
                size
              }
            }
          }
        }
      GQL
      }
    end
    it "adds a product to a user's cart" do
      post "/graphql", params: {query: @query["addProductToCart", "productAdded"]},
       headers: { "x-auth-token" => @user_token }
      expect(response).to have_http_status(200)
      expect(JSON.parse(response.body)['data']).to be_truthy
      
      post "/graphql", params: {query: @query["addProductToCart", "productAdded"]},
       headers: { "x-auth-token" => @user_token }
      expect(response).to have_http_status(200)
      expect(JSON.parse(response.body)['data']['addProductToCart']).to be_truthy

      post "/graphql", params: {query: @query["addProductToCart", "productAdded"]},
       headers: { "x-auth-token" => @user_token }
      expect(JSON.parse(response.body)['data']['addProductToCart']).to be_falsy
    end

    it "removes a product from a user's cart" do
      create(:cart, user: @user, product_detail: @product_detail, quantity: 2)
      post "/graphql", params: {query: @query["removeProductFromCart", "productRemoved"]},
       headers: { "x-auth-token" => @user_token }
      expect(response).to have_http_status(200)
      expect(JSON.parse(response.body)['data']).to be_truthy
    end

    it "removes all appearances of a product from the user's cart" do
      create(:cart, user: @user, product_detail: @product_detail, quantity: 2)
      post "/graphql", params: {
        query: @query["removeProductFromCart",
           "productRemoved", "all: true"]},
            headers: { "x-auth-token" => @user_token }
      expect(response).to have_http_status(200)
      expect(JSON.parse(response.body)['data']).to be_truthy
    end

    it "clears a user's cart" do
      create(:cart, user: @user, product_detail: @product_detail) 
      post "/graphql", params: {query: "{clearCart}"}, headers: { "x-auth-token" => @user_token }
      expect(response).to have_http_status(200)
      expect(JSON.parse(response.body)["data"]["clearCart"]).to eq("Cart successfully cleared")
    end
  end
end
