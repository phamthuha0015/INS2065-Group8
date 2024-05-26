class CreateDetailOrders < ActiveRecord::Migration[7.0]
  def change
    create_table :detail_orders do |t|
      t.references :order, null: false, foreign_key: true
      t.references :note, null: false, foreign_key: true
      t.integer :quantity
      t.float :total_price
      t.string :payment_method

      t.timestamps
    end
  end
end
