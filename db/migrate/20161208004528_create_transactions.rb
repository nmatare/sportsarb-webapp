class CreateTransactions < ActiveRecord::Migration[5.0]
  def change
    create_table :transactions do |t|
      t.string :credit
      t.string :debit
      t.datetime :created_at
      t.string :name
      t.integer :user_id
      t.text :notes

      t.timestamps
    end
  end
end
