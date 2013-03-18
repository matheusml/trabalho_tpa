class Cart < ActiveRecord::Base
	belongs_to :buy
	has_many :cart_items

	def total_price
		price = 0
		self.cart_items.each do |cart_item|
			product = Product.find(cart_item.product_id)
			price += product.price
		end
		price
	end
end
