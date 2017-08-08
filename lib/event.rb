require_relative '../ticket'

class Event
	attr_reader :id, :location, :tickets
	def initialize(id, location, tickets)
		@id = id
		@location = location
		@tickets = tickets
	end

	def distance_to(location)
    	return (location[0] - @location[0]).abs + (location[1] - @location[1]).abs
  	end

  	def find_cheapest_ticket()
    	@tickets.sort_by {|ticket| ticket.price}[0]
  	end

end



