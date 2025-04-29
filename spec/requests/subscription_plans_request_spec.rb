require 'rails_helper'

RSpec.describe "Api::V1::SubscriptionPlans", type: :request do
  before(:each) do
    @customer1 = Customer.create!(first_name: 'Sam', last_name: 'Winchester', email: 'sammy@gmail.com', address: '123 Spooky Lane')
    @customer2 = Customer.create!(first_name: 'John', last_name: 'Winchester', email: 'john@gmail.com', address: '456 Haunted Rd')
    @plan = SubscriptionPlan.create!(title: 'Energy Boost Teas', price: 19.99, frequency: 'monthly')
    CustomerSubscription.create!(status: 'active', subscription_plan: @plan, customer: @customer1)
    CustomerSubscription.create!(status: 'active', subscription_plan: @plan, customer: @customer2)
  end

  describe 'GET /api/v1/subscription_plans' do #index
    it 'returns all subscription plans with teas' do
      get "/api/v1/subscription_plans"
      
      expect(response).to have_http_status(:ok)
      body = JSON.parse(response.body, symbolize_names: true)
      
      expect(body[:data].size).to be > 0
      expect(body[:data].first[:relationships][:teas]).to be_present
    end
  end

  describe 'GET /api/v1/subscription_plans/:id' do #show
    it 'returns a subscription plan with customers attached' do
      get "/api/v1/subscription_plans/#{@plan.id}"
      
      expect(response).to have_http_status(:ok)
      
      body = JSON.parse(response.body, symbolize_names: true)

      customer_subscriptions = body[:included].select { |i| i[:type] == 'customer_subscription' }
      expect(customer_subscriptions.size).to eq(2)
      customer_ids = customer_subscriptions.map { |sub| sub[:relationships][:customer][:data][:id] }
      expect(customer_ids).to include(@customer1.id.to_s, @customer2.id.to_s)
      expect(body[:data][:id]).to eq(@plan.id.to_s)
    end
  end
end
