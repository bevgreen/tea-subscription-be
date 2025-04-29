class CustomerSubscription < ApplicationRecord
  belongs_to :customer
  belongs_to :subscription_plan

  validates :status, presence: true

  def valid_status?(new_status)
    ['active', 'inactive'].include?(new_status)
  end

  def cancel_with_params(status)
    if valid_status?(status)
      update(status: status)
    else
      errors.add(:status, 'is not a valid status')
      false
    end
  end
end
