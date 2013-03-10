class Buy < ActiveRecord::Base
	has_many :carts
	has_one :payment
	belongs_to :customer
	belongs_to :seller
end
