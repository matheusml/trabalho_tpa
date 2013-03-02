class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
    	t.string :name
    	t.string :cpf
    	t.boolean :preferential
    	t.string :email
    	t.string :identity
    	t.integer :points
    	
      t.timestamps
    end
  end
end
