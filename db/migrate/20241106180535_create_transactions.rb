class CreateTransactions < ActiveRecord::Migration[5.2]
  def change
    create_table :transactions do |t|
      t.decimal :amount
      t.references :category, foreign_key: true
      t.date :transaction_date
      t.text :description

      t.timestamps
    end
  end
end
