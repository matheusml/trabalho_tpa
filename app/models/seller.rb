class Seller < ActiveRecord::Base
	attr_protected

	has_many :buys
end
