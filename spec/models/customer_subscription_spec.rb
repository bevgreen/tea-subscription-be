require 'rails_helper'

RSpec.describe CustomerSubscription, type: :model do
  it { should belong_to(:customer) }
  it { should belong_to(:subscription_plan) }
  it { should validate_presence_of(:status) }

  describe '#valid_status?' do
    let(:customer) { Customer.create!(first_name: 'Sam', last_name: 'Winchester', email: 'sammy@gmail.com', address: '123 Spooky Lane') }
    let(:plan) { SubscriptionPlan.create!(title: 'Energy Boost Teas', price: 19.99, frequency: 'monthly') }
    let(:subscription) { CustomerSubscription.create!(status: 'active', subscription_plan: plan, customer: customer) }

    it 'returns true for valid status' do
      expect(subscription.valid_status?('active')).to be true
      expect(subscription.valid_status?('inactive')).to be true
    end

    it 'returns false for invalid status' do
      expect(subscription.valid_status?('paused')).to be false
      expect(subscription.valid_status?('suspended')).to be false
    end
  end

  describe '#cancel_with_params' do
    let(:customer) { Customer.create!(first_name: 'Sam', last_name: 'Winchester', email: 'sammy@gmail.com', address: '123 Spooky Lane') }
    let(:plan) { SubscriptionPlan.create!(title: 'Energy Boost Teas', price: 19.99, frequency: 'monthly') }
    let(:subscription) { CustomerSubscription.create!(customer: customer, subscription_plan: plan, status: 'active') }

    context 'when status is updated to inactive' do
      it 'successfully updates the status to inactive' do
        subscription.cancel_with_params('inactive')
        expect(subscription.status).to eq('inactive')
      end
    end

    context 'when status is updated to an invalid value' do
      it 'fails with an invalid status' do
        result = subscription.cancel_with_params('paused') 
        expect(result).to be false
        expect(subscription.errors[:status]).to include('is not a valid status')
      end
    end

    context 'when status is blank' do
      it 'fails with a blank status' do
        result = subscription.cancel_with_params('')
        expect(result).to be false
        expect(subscription.errors[:status]).to include('is not a valid status')
      end
    end
  end
end
