require 'rails_helper'

RSpec.describe Customer, type: :model do
 it { should have_many(:customer_subscriptions) }
 it { should have_many(:subscription_plans).through(:customer_subscriptions) }
end
