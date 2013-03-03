class CartsController < ApplicationController
	def index
		cart = Cart.where(:buy_id => nil).first
		cart.blank? ? @cart_items = [] : @cart_items = cart.cart_items
	end

	def add_to_cart
		@cart = Cart.create(buy:buy, product_id:params[:product_id])
	end
end
