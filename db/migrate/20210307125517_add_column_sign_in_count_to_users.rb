class AddColumnSignInCountToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :sign_in_count, :integer
  end
end
