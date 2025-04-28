require 'rails_helper'

RSpec.describe SubscriptionPlanTea, type: :model do
  it { should belong_to(:subscription_plan) }
  it { should belong_to(:tea) }
end
