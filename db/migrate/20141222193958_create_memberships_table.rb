class CreateMembershipsTable < ActiveRecord::Migration
  def up
    create_table :memberships do |t|
      t.integer :user_id, null: false
      t.integer :friend_id, null: false
    end
  end

  def down
    drop_table :memberships

  end
end
