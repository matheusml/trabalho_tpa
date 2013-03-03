class RemovesCartIdFromProjects < ActiveRecord::Migration
  def change
  	remove_column :products, :cart_id
  end
end
