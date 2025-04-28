class SubscriptionPlan < ApplicationRecord
    has_many :customer_subscriptions
    has_many :customers, through: :customer_subscriptions
    has_many :subscription_plan_teas
    has_many :teas, through: :subscription_plan_teas
end
