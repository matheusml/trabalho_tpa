class Supplier < ActiveRecord::Base
	attr_protected

	validates_presence_of :name

	has_many :products
end
