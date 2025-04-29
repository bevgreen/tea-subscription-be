class Api::V1::SubscriptionPlansController < ApplicationController
    def index
        plans = SubscriptionPlan.includes(:teas).all
        render json: SubscriptionPlanSerializer.new(plans, include: [:teas]), status: :ok
    end

    def show
        plan = SubscriptionPlan
                 .includes(:teas, customer_subscriptions: :customer)
                 .find(params[:id])

        render json: SubscriptionPlanSerializer.new(
          plan,
          include: [:teas, { customer_subscriptions: [:customer] }]
        ), status: :ok
      end
end