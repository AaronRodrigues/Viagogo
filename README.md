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

1. Install Git Bash
2. Install chocolatey In cmd, Type in
```
@powershell -NoProfile -ExecutionPolicy Bypass -Command "iex ((new-object net.webclient).DownloadString('https://chocolatey.org/install.ps1'))" && SET PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin
```
3. In git bash type
```
choco install ruby
choco update ruby
```
4. Check that installed version of Ruby is ruby v2.4.1.2

### Thought Process
1. Create a 20x20 grid, which will be an array of size 20x20
- Installed testing dependencies
 RSpec
 Rubocop
 simple-cov for test coverage
