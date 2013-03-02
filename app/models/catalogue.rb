class Catalogue < ActiveRecord::Base
	attr_protected

	validates_presence_of :catalogue_type

	has_many :products
end
