class Product < ActiveRecord::Base
	attr_protected

	validates_presence_of :name, :price

	has_many :product_stocks
	belongs_to :supplier
	belongs_to :catalogue
end
