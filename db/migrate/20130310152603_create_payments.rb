class CreatePayments < ActiveRecord::Migration
  def change
    create_table :payments do |t|
    	t.references :buy
    	t.integer :payable_id
      t.string  :payable_type
      
      t.timestamps
    end
  end
end
