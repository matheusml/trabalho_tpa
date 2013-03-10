class RenamesFieldOnMoney < ActiveRecord::Migration
  def change
  	remove_column :money, :change
  	add_column :money, :value_paid, :float
  end
end
