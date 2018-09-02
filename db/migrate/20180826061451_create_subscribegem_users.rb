class CreateSubscribegemUsers < ActiveRecord::Migration
  def change
    create_table :subscribegem_users do |t|
      t.string :email
      t.string :password_digest

      t.timestamps null: false
    end
  end
end
