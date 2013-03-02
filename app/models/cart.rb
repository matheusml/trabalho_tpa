class Cart < ActiveRecord::Base
	belongs_to :buy
	has_one :product
end
