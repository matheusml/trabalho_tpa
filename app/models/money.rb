class Money < ActiveRecord::Base
	attr_protected
	
	has_many :payments, :as => :payable
end
