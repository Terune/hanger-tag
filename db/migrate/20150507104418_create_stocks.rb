class CreateStocks < ActiveRecord::Migration
  def change
    create_table :stocks do |t|
      t.references :shop
      t.references :product
      t.integer :quantity, default: 0

      t.timestamps null: false
    end
  end
end
