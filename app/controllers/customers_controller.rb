class CustomersController < ApplicationController
	def new
		@customer = Customer.new
	end

	def create
		@customer = Customer.create(:name => params[:name],
																:cpf => params[:cpf],
																:identity => params[:identity],
																:email => params[:email],
																:preferential => params[:preferential])

		redirect_to products_path, :notice => 'Cliente criado com sucesso.'
	end
end
