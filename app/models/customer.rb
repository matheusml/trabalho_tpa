class Customer < ActiveRecord::Base
	attr_protected
	
	has_many :buys
end
