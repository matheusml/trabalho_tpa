class CreateCatalogues < ActiveRecord::Migration
  def change
    create_table :catalogues do |t|
    	t.string :catalogue_type
      t.timestamps
    end
  end
end
