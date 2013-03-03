class ProductsController < ApplicationController
	def index
		@products = Product.all
	end

	def products_by_catalogue
		@catalogue = Catalogue.find params[:id]
		@products = @catalogue.products
	end
end
