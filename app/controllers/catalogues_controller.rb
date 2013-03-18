class CataloguesController < ApplicationController
	def index
		@catalogues = Catalogue.all
	end
end
