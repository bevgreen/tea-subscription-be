class Api::V1::CustomerSubscriptionsController < ApplicationController
    def update
        subscription = CustomerSubscription.find(params[:id])
      
        if subscription.cancel_with_params(subscription_params)
          render json: CustomerSubscriptionSerializer.new(subscription), status: :ok
        else
          render json: { error: 'Failed to update subscription' }, status: :unprocessable_entity
        end
    end
end