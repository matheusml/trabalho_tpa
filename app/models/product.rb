class Product < ActiveRecord::Base
	attr_protected

	validates_presence_of :name, :price

	has_many :product_stocks
	has_one :product
	belongs_to :supplier
	belongs_to :catalogue
end
