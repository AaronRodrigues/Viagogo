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
  
end