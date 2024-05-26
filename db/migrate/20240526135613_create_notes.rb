class CreateNotes < ActiveRecord::Migration[7.0]
  def change
    create_table :notes do |t|
      t.string :title
      t.references :author, null: false, foreign_key: true
      t.references :genre, null: false, foreign_key: true
      t.references :publisher, null: false, foreign_key: true
      t.string :isbn
      t.integer :publish_year
      t.float :price
      t.integer :stock_quantity

      t.timestamps
    end
  end
end
