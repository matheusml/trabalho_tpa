class Buy < ActiveRecord::Base
	has_one :cart
	has_one :payment
	belongs_to :customer
	belongs_to :seller

	def change
		payment = self.payment.payable
		if payment.class == Money
			(payment.value_paid - self.cart.total_price)
		else
			0
		end
	end
end
