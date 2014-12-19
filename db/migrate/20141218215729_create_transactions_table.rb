class CreateTransactionsTable < ActiveRecord::Migration
  def change
    create_table :transactions do |t|
      t.integer :payer_id, null: false
      t.integer :payee_id, null: false
      t.float :amount, null: false
      t.text :description

      t.timestamps
    end
  end


end
