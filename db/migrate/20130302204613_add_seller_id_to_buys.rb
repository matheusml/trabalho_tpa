class AddSellerIdToBuys < ActiveRecord::Migration
  def change
  	add_column :buys, :seller_id, :integer
  end
end
