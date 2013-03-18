class Stock < ActiveRecord::Base
	attr_protected

	has_many :product_stocks

	validates_presence_of :name
end
