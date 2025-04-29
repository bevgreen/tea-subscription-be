class Api::V1::CustomerSubscriptionsController < ApplicationController
    def update
        subscription = CustomerSubscription.find(params[:id])
      
        if subscription.cancel_with_params(params[:status])
          render json: CustomerSubscriptionSerializer.new(subscription), status: :ok
        else
          render json: { errors: subscription.errors.full_messages }, status: :unprocessable_entity
        end
    end
end