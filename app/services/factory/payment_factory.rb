module Factory
	class PaymentFactory
		def initialize(payment, value_paid)
			if payment == "Dinheiro"
				money = Money.new(:change => value_paid)
				payment = Payment.new
				payment.payable = money
				payment.save
			elsif payment == "Credito"
				credit = Credit.new
				payment = Payment.new
				payment.payable = credit
				payment.save
			else
				debit = Debit.new
				payment = Payment.new
				payment.payable = debit
				payment.save
			end
		end
	end
end