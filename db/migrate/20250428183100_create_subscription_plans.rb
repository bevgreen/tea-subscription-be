class CreateSubscriptionPlans < ActiveRecord::Migration[7.1]
  def change
    create_table :subscription_plans do |t|
      t.string :title
      t.decimal :price
      t.string :frequency

      t.timestamps
    end
  end
end
