require 'rails_helper'

RSpec.describe "Api::V1::CustomerSubscriptions", type: :request do
  before(:each) do
    @customer = Customer.create!(first_name: 'Sam', last_name: 'Winchester', email: 'sammy@gmail.com', address: '123 Spooky Lane')
    @plan = SubscriptionPlan.create!(title: 'Energy Boost Teas', price: 19.99, frequency: 'monthly')
    @subscription = CustomerSubscription.create!(status: 'active', subscription_plan: @plan, customer: @customer)
  end

  describe 'PATCH /api/v1/customer_subscriptions/:id' do
    it 'updates the subscription status to inactive' do
      patch "/api/v1/customer_subscriptions/#{@subscription.id}", params: { status: 'inactive' }
        # binding.pry
      expect(response).to have_http_status(:ok)
      @subscription.reload
      expect(@subscription.status).to eq('inactive')
    end

    it 'returns an error when the status is invalid' do
      patch "/api/v1/customer_subscriptions/#{@subscription.id}", params: { status: 'paused' }

      expect(response).to have_http_status(:unprocessable_entity)
      body = JSON.parse(response.body, symbolize_names: true)
      expect(body[:errors]).to include("Status is not a valid status")
    end

    it 'returns an error when the status is blank' do
      patch "/api/v1/customer_subscriptions/#{@subscription.id}", params: { status: '' }

      expect(response).to have_http_status(:unprocessable_entity)
      body = JSON.parse(response.body, symbolize_names: true)
      expect(body[:errors]).to include("Status is not a valid status")
    end
  end
end
