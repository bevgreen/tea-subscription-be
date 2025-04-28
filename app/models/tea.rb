class Tea < ApplicationRecord
    has_many :subscription_plan_teas
    has_many :subscription_plans, through: :subscription_plan_teas
end
