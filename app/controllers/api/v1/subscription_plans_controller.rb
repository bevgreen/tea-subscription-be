class Api::V1::SubscriptionPlansController < ApplicationController
    def index
        plans = SubscriptionPlan.all
        render json: SubscriptionPlanSerializer.new(plans), status: :ok
    end

    def show
        plan = SubscriptionPlan
                 .includes(:teas, customer_subscriptions: :customer)
                 .find(params[:id])

        render json: SubscriptionPlanSerializer.new(
          plan,
          include: ['teas', 'customer_subscriptions.customer']
        ), status: :ok
    end
end