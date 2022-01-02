class ChangeColumnCurrentSignInIpToUsers < ActiveRecord::Migration[5.2]
  def change
    change_column :users, :current_sign_in_ip, :string
  end
end
