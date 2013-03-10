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

	def cart_checkout
		@cart = Cart.where(:buy_id => nil).first
		@cart.blank? ? @cart_items = [] : @cart_items = @cart.cart_items
		@sellers = Seller.all
		@payments = ["Credito", "Debito", "Dinheiro"]
	end

	def cart_seller
		customer = customer_find_or_create_by_cpf(params[:cpf])
		payment = Factory::PaymentFactory.new(params[:payment], params[:value_paid])
		buy = Buy.create(:seller_id => params[:seller], 
										 :payment => Payment.last, 
										 :customer => customer)
		cart = Cart.where(:buy_id => nil).first
		cart.update_attributes(:buy_id => buy.id) unless cart.blank?

		redirect_to cart_conclusion_path(buy)
	end

	def cart_conclusion
		buy = Buy.find(params[:id])
		@change = buy.change		
	end

	private
	def customer_find_or_create_by_cpf(cpf)
		customer = Customer.find_by_cpf(cpf)
		if customer.nil?
			customer = Customer.create(:cpf => cpf)
		end
		customer
	end

end
