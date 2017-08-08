require_relative '../ticket'

class Event
  attr_reader :id, :location, :tickets
  def initialize(id, location, tickets)
    @id = id
    @location = location
    @tickets = tickets
  end

  def self.generate(event_id, location)
      num_tickets = 1 + rand(10)
      tickets = (0..num_tickets-1).map {|ticket| Ticket.new(1 + rand(30)) }
      Event.new(event_id, location, tickets)
  end

  def distance_to(location)
      return (location[0] - @location[0]).abs + (location[1] - @location[1]).abs
    end

    def find_cheapest_ticket()
      @tickets.sort_by {|ticket| ticket.price}[0]
    end
end



