require_relative '../ticket'

class Event
	def initialize(id, location, tickets)
		@id = id
		@location = location
		@tickets = tickets
	end
end