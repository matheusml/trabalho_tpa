class Buy < ActiveRecord::Base
	has_many :carts
	belongs_to :customer
end
