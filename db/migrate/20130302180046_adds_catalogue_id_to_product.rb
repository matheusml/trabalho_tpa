class AddsCatalogueIdToProduct < ActiveRecord::Migration
  def change
  	add_column :products, :catalogue_id, :integer
  end
end
