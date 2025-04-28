require 'rails_helper'

RSpec.describe CustomerSubscription, type: :model do
  it { should belong_to(:customer) }
  it { should belong_to(:subscription_plan) }

  it { should validate_presence_of(:status) }
end
