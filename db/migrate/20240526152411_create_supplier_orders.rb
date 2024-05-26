class CreateSupplierOrders < ActiveRecord::Migration[7.0]
  def change
    create_table :supplier_orders do |t|
      t.references :supplier, null: false, foreign_key: true
      t.references :note, null: false, foreign_key: true
      t.integer :quantity
      t.float :cost

      t.timestamps
    end
  end
end
