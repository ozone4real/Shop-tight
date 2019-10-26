# frozen_string_literal: true

require 'rails_helper'

describe 'Create Order Test', type: :request do
  include QueriesHelper
  before do
    product = create(:product, category: @category, sub_category: @sub_category, user: @admin)
    @product_detail = create(:product_detail, product: product, quantity_in_stock: 2)
    create(:cart, user: @user, product_detail: @product_detail)
    payment = create(:payment)

    @query = <<-GQL
      mutation {
        createOrderWithoutPayment(input: {paymentId: #{payment.id}}) {
            order {
                id
            }
          }
        }
    GQL
  end
  it 'creates an order for a user' do
    post '/graphql', params: { query: @query }, headers: { "x-auth-token": @user_token }
    expect(response).to have_http_status(200)
    expect(JSON.parse(response.body)['data']).to be_truthy
  end
end
