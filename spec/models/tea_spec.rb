require 'rails_helper'

RSpec.describe Tea, type: :model do
  it { should have_many(:subscription_plan_teas) }
  it { should have_many(:subscription_plans).through(:subscription_plan_teas) }
end
