class CartsController < ApplicationController
	def index
		cart = Cart.where(:buy_id => nil).first
		cart.blank? ? @cart_items = [] : @cart_items = cart.cart_items
	end

	def add_to_cart
		cart = Cart.where(:buy_id => nil).first
		cart = Cart.create if cart.blank?
		cart_item = CartItem.create(cart_id:cart.id, product_id:params[:product_id])

		redirect_to carts_path
	end

	def destroy_cart_item
		cart_item = CartItem.find params[:id]
		cart_item.destroy unless cart_item.blank?
		
		redirect_to carts_path
	end
end
