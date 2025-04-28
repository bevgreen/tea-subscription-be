class CustomerSubscription < ApplicationRecord
  belongs_to :customer
  belongs_to :subscription_plan
end
