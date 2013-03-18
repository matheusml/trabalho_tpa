class Customer < ActiveRecord::Base
	attr_protected

	validates_presence_of :cpf
		
	has_many :buys

	def update_points
		if self.preferential
			self.points ? self.points += 10 : self.points = 10
			self.save
		end
	end
end
