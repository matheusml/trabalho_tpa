class CreateProductStocks < ActiveRecord::Migration
  def change
    create_table :product_stocks do |t|
    	t.references :product
    	t.references :stock
    	t.integer :amount
    	
      t.timestamps
    end
  end
end
