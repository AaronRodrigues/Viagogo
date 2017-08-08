require_relative 'event.rb'

class Grid
  
  def initialize(events)
    @events = events
  end

  def self.generate(num_x = 20, num_y = 20, num_events = 50)
    	locations = []
		(0..num_x-1).each do |x|
		  locations[x] = []
		  (0..num_y-1).each do |y|
		    locations[x][y] = false
		  end
		end

    	events = []
    	(0..num_events-1).each do |event_id|
      	location = [rand(num_x), rand(num_y)]
      	while locations[location[0]][location[1]] do
        location = [rand(num_x), rand(num_y)]
      	end
      	events << Event.generate(event_id, location)
      	locations[location[0]][location[1]] = true
    	end
    Grid.new(events)
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

grid = Grid.generate()
input = grid.query()