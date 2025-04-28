class CreateCustomerSubscriptions < ActiveRecord::Migration[7.1]
  def change
    create_table :customer_subscriptions do |t|
      t.references :customer, null: false, foreign_key: true
      t.references :subscription_plan, null: false, foreign_key: true
      t.string :status
      t.datetime :start_date

      t.timestamps
    end
  end
end
