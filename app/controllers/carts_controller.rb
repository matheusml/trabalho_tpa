class CartsController < ApplicationController
	def add_to_cart
		@cart = Cart.create(buy:buy, product_id:params[:product_id])
	end
end
