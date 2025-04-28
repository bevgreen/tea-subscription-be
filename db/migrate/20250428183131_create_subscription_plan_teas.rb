class CreateSubscriptionPlanTeas < ActiveRecord::Migration[7.1]
  def change
    create_table :subscription_plan_teas do |t|
      t.references :subscription_plan, null: false, foreign_key: true
      t.references :tea, null: false, foreign_key: true

      t.timestamps
    end
  end
end
