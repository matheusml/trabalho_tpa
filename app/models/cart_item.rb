class CartItem < ActiveRecord::Base
	attr_protected
	
	belongs_to :cart
end
