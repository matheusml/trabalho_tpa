class CreateCarts < ActiveRecord::Migration
  def change
  	drop_table :carts
    create_table :carts do |t|
    	t.references :buy
      t.timestamps
    end
  end
end
