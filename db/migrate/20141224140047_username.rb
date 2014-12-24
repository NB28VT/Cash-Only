class Username < ActiveRecord::Migration
  def up
    add_column :users, :user_name, :string, default: :email, null: false
    User.update_all user_name: :email
  end


  def down
    remove_column :users, :user_name
  end
end
