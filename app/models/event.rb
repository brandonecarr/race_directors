class Event < ApplicationRecord
	def change
		has_many :athletes
		belongs_to :director
	end
end
