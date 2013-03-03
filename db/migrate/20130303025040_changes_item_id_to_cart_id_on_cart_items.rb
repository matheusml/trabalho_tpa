class ChangesItemIdToCartIdOnCartItems < ActiveRecord::Migration
  def change
  	remove_column :cart_items, :item_id
  	add_column :cart_items, :cart_id, :integer
  end
end
