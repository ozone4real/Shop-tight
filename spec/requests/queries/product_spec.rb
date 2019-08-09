require 'rails_helper'

describe "Product test", type: :request do
  include LoginHelper
  context "fetch products" do
    before do
      @query = <<-GQL
      {
        productCollection(page: 1, limit: 5, sortParam: "quantity_sold") {
            size,
            product {
                brand,
                productName
            }
          }
        }
      GQL
    end
    it "fetches multiple products" do
      post "/graphql", params: {query: @query}
      expect(response).to have_http_status(200)
      expect(JSON.parse(response.body)['data']['productCollection']).to be_an(Array)
      expect(JSON.parse(response.body)['data']['productCollection'].size).not_to be(0)
    end
  end
end
