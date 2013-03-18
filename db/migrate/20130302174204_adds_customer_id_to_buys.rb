class AddsCustomerIdToBuys < ActiveRecord::Migration
  def change
  	add_column :buys, :customer_id, :integer
  end
end
