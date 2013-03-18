module CartsHelper
	def sum_of_products(cart_items)
		sum = 0
		cart_items.each do |cart_item|
			product = Product.find(cart_item.product_id)
			sum += product.price
		end
		number_to_currency(sum, :unit => "R$")
	end
end
