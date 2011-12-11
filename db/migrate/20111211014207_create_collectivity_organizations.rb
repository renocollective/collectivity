class CreateCollectivityOrganizations < ActiveRecord::Migration
  def change
    create_table :collectivity_organizations do |t|
      t.string :name

      t.timestamps
    end
  end
end
