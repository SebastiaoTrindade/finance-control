class ChangeAmountPrecisionInTransactions < ActiveRecord::Migration[5.2]
  def change
    change_column :transactions, :amount, :decimal, precision: 10, scale: 2
  end
end
