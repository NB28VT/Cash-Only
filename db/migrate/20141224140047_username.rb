class Username < ActiveRecord::Migration
  def up
    add_column :users, :user_name, :string, default: :email, null: false

  end


  def down
    remove_column :users, :user_name
  end
end
