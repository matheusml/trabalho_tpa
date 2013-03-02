class Product < ActiveRecord::Base
	attr_protected

	validates_presence_of :name, :price
end
