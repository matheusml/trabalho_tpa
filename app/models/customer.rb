class Customer < ActiveRecord::Base
	attr_protected

	validates_presence_of :cpf
		
	has_many :buys
end
