class RemovesAdminFieldFromUsers < ActiveRecord::Migration
  def change
  	remove_column :users, :admin
  end
end
