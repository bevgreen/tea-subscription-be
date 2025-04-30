class Api::V1::CustomerSubscriptionsController < ApplicationController
  def update
    subscription = CustomerSubscription.find(params[:id])
    status = params.require(:customer_subscription).permit(:status)[:status]

    if subscription.cancel_with_params(status)
      render json: CustomerSubscriptionSerializer.new(subscription), status: :ok
    else
      render json: { errors: subscription.errors.full_messages }, status: :unprocessable_entity
    end
  end
end
