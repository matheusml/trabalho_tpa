class CreateMoney < ActiveRecord::Migration
  def change
    create_table :money do |t|
    	t.float :change

      t.timestamps
    end
  end
end
