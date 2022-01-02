class ChangeColumnLastSignInIpToUsers < ActiveRecord::Migration[5.2]
  def change
    change_column :users, :last_sign_in_ip, :string
  end
end
