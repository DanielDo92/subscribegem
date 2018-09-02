class AddSubdomainToSubscribegemAccounts < ActiveRecord::Migration
  def change
    add_column :subscribegem_accounts, :subdomain, :string
    add_index :subscribegem_accounts, :subdomain
  end
end
