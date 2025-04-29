class Api::V1::CustomerSubscriptionsController < ApplicationController
    def index
        subscriptions = CustomerSubscription.includes(:customer, :subscription_plan).all 
        render json: CustomerSubscriptionSerializer.new(subscriptions), status: :ok
    end
end