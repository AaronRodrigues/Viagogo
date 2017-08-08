# Viagogo
Viagogo Tech Test

### Requirements

- Code in any language you like but please provide clear instructions on how we should build & run your code.
Please use any source control system you like, and send us a link via github or google drive (our email system blocks zip files).

- The first requirement is your code meets the requirements.
Secondary requirements are whether your code is idiomatic for the language being coded in, easy to read, and clearly laid out.

### Scenario

- Your program should randomly generate seed data.
- Your program should operate in a world that ranges from -10 to +10 (Y axis), and -10 to +10 (X axis).
- Your program should assume that each co-ordinate can hold a maximum of one event. • Each event has a unique numeric identifier (e.g. 1, 2, 3). • Each event has zero or more tickets.
- Each ticket has a non-zero price, expressed in US Dollars.
- The distance between two points should be computed as the Manhattan distance.


### Instructions

- You are required to write a program which accepts a user location as a pair of co-ordinates, and returns a list of the five closest events, along with the cheapest ticket price for each event.
- Please detail any assumptions you have made. • How might you change your program if you needed to support multiple events at the same location?
- How would you change your program if you were working with a much larger world size?

### Example Program Run


Please Input Coordinates:

4,2
Closest Events to (4,2):
Event 003 - $30.29, Distance 3
Event 001 - $35.20, Distance 5
Event 006 - $01.40, Distance 12

### My Approach

1. Create a 20x20 grid. The grid will be an array
2. Generate Random Events at different co-ordinates
3. User can select a co-ordinate
4. The program returns a result of closest Events

### Installation for Windows

1. Install RailsInstaller for Windows version 2.3.3  from 
   http://railsinstaller.org/en
2. Open Git Bash
3. To install dependencies type
   ```
   bundle install
   ```
   This will install the testing framework and added dependencies
4. Check that installed version of Ruby is ruby v2.3.3
   ```
   ruby -v
   ```

### Run the Program

1. Open Git Bash
2. Type 
   ```
   irb
   ```
   This opens the interactive ruby shell
3. Type
   ```
   require './lib/grid'
   ```
4. You can now input your co-ordinates as follows
   ```
   Please Input Coordinates:
   1,2
   ```
   This will return the closest events
   ```
   Event id:5 Ticket price: 2 Distance: 2
   Event id:23 Ticket price: 2 Distance: 3
   Event id:9 Ticket price: 3 Distance: 3
   Event id:47 Ticket price: 6 Distance: 4
   Event id:42 Ticket price: 14 Distance: 4
   ```
### Thought Process
1. Before creating the grid, tickets and event classes were created to be inserted into the grid
2. Create a Ticket class which initializes with a price
3. Create an Event class that initializes with id, location and tickets 
4. The Event class generates a random amount of tickets per location
5. Calculates the distance to a location ie the Manhattan Distance
6. Finds the cheapest ticket at the event
7. Create a grid class that generates a grid of 20x20 with a maximum number of 20 events
8. The five closest events are sorted as they are placed in an array
9. A method is used to print out the cheapest closest tickets to the console.

### Assumptions Made

1. The Manhattan distance from a point (a,b) to point (c, d) is equal to |a-c| + |b-d|
2. The range of ticket prices will vary from 1-30 units of currency
3. A total of 50 random events can be generated at the time of running this program

### How might you change your program if you needed to support multiple events at the same location?

To add multiple events at the same location I simply need to modify the while loop in the Grid class, which checks to see if events already exist at a particular co-ordinate.

### How would you change your program if you were working with a much larger world size?

If I were working with much larger world size I would choose to write the events, tickets and co-ordinates to a database which would make it easier to Create, Read, Update or Delete data pertaining to the events.
I would also look into using a Nearest Neighbour Search or a k-d tree which would decrease the processing time used to access the data.

References:
1. https://en.wikipedia.org/wiki/Nearest_neighbor_search#Nearest_neighbor_search_in_spaces_with_small_intrinsic_dimension
2. https://en.wikipedia.org/wiki/K-d_tree
3. https://stackoverflow.com/questions/2486093/millions-of-3d-points-how-to-find-the-10-of-them-closest-to-a-given-point