class CreateSubscribegemAccounts < ActiveRecord::Migration
  def change
    create_table :subscribegem_accounts do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
