class CreateCollectivityMembers < ActiveRecord::Migration
  def change
    create_table :collectivity_members do |t|
      t.integer :organization_id
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :phone

      t.timestamps
    end
  end
end
