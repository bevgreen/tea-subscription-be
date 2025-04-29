class AddImageUrlToTeasAndSubscriptionPlans < ActiveRecord::Migration[7.1]
  def change
    add_column :teas, :image_url, :string
    add_column :subscription_plans, :image_url, :string
  end
end
