class CreateCartItems < ActiveRecord::Migration
  def change
  	drop_table :cart_items
    create_table :cart_items do |t|
    	t.references :item
    	t.references :product
      t.timestamps
    end
  end
end
