class CreateCollectivityPlans < ActiveRecord::Migration
  def change
    create_table :collectivity_plans do |t|
      t.string :name
      t.integer :days_per_week
      t.integer :price_in_cents, :default => 0, :null => false
      t.string :currency, :default => "USD"
      t.string :billing_frequency, :default => "monthly"
      t.timestamps
    end
  end
end
