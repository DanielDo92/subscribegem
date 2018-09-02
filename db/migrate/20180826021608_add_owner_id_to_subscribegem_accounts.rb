class AddOwnerIdToSubscribegemAccounts < ActiveRecord::Migration
  def change
    add_column :subscribegem_accounts, :owner_id, :integer
  end
end
