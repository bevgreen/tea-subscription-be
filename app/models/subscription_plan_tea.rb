class SubscriptionPlanTea < ApplicationRecord
  belongs_to :subscription_plan
  belongs_to :tea
end
