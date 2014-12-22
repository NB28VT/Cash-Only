class FriendTable < ActiveRecord::Migration
  def up
    create_table :friends do |t|
      t.string :group_name, null:false
    end
  end
  
  def down
    drop_table :friends
  end
end
