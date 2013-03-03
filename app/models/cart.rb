class Cart < ActiveRecord::Base
	belongs_to :buy
	has_many :cart_items
end
