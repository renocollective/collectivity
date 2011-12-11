class AddDeviseToCollectivityMembers < ActiveRecord::Migration
  def self.up
    change_table(:collectivity_members) do |t|
      t.confirmable
      t.database_authenticatable :null => false
      t.encryptable
      t.lockable :lock_strategy => :failed_attempts, :unlock_strategy => :both
      t.recoverable
      t.rememberable
      t.trackable
      t.token_authenticatable
    end

    add_index :collectivity_members, :email,                :unique => true
    add_index :collectivity_members, :reset_password_token, :unique => true
    add_index :collectivity_members, :confirmation_token,   :unique => true
    add_index :collectivity_members, :unlock_token,         :unique => true
    add_index :collectivity_members, :authentication_token, :unique => true
  end

  def self.down
    # By default, we don't want to make any assumption about how to roll back a migration when your
    # model already existed. Please edit below which fields you would like to remove in this migration.
    raise ActiveRecord::IrreversibleMigration
  end
end
