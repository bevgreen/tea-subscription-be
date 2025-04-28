class Customer < ApplicationRecord
    has_many :customer_subscriptions
    has_many :subscription_plans, through: :customer_subscriptions
        
    validates :email, presence: true, uniqueness: true
end
