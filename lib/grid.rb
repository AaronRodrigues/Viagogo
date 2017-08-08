class Grid
  def initialize(events)
    @events = events
  end

  def query()
    puts "Please Input Coordinates:\n"
    location = gets.chomp
    location = location.split(",").map{|element| element.to_i}
    find_cheap_close_ticket(location)
  end

  def find_closest_event(location, num=5)
    sorted_events = @events.sort_by {|event| event.distance_to(location)}
    sorted_events[0..num-1]
  end

  def find_cheap_close_ticket(location)
    self.find_closest_event(location).each do |event|
      puts "Event id:#{event.id} Ticket price: #{event.find_cheapest_ticket().price} Distance: #{event.distance_to(location)}\n"
    end
    nil
  end
  
end