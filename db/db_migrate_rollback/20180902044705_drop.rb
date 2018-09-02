class Drop < ActiveRecord::Migration
  def change
    drop_table :subscribegem_accounts
    drop_table :subscribegem_users
  end
end
