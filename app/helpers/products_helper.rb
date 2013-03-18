module ProductsHelper
	def product_on_stock?(product)
		product_stocks = ProductStock.where(:product_id => product.id)
		if product_stocks.blank?
			false
		else
			product_stocks.each do |product_stock|
				return true if product_stock.amount > 0
			end
			false
		end
	end
end
