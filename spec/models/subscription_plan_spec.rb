require 'rails_helper'

RSpec.describe SubscriptionPlan, type: :model do
  it { should have_many(:customer_subscriptions) }
  it { should have_many(:customers).through(:customer_subscriptions) }

  it { should have_many(:subscription_plan_teas) }
  it { should have_many(:teas).through(:subscription_plan_teas) }
end
