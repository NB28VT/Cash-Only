class CreateTransactionsTable < ActiveRecord::Migration
  def up
    create_table :transactions do |t|
      t.integer :payer_id, null: false
      t.integer :payee_id, null: false
      t.float :amount, null: false
      t.text :description

      t.timestamps
    end
  end

  def down
    drop_table :transactions
  end

end
