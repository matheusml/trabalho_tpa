class ProductStock < ActiveRecord::Base
	attr_protected

	belongs_to :product
	belongs_to :stock

	validates_presence_of :amount
end
