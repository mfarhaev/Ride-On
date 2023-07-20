# Create the class for the Ride On game
class RideOn
  def initialize
    puts "Welcome to Ride On! Let's get started!"
  end

# Initialize a new game
  def new_game
    puts "Let's start a new game!"
    @player_name = player_name
    @vehicle = vehicle_choice
    @destination = destination 
    play_game
  end

# Ask for the player's name 
  def player_name
    print "What is your name?: "
    gets.chomp
  end

# Ask the player to choose a vehicle 
  def vehicle_choice
    puts "Choose your vehicle to ride on!"
    puts "1. Bike"
    puts "2. Skateboard"
    puts "3. Scooter"
    print "Enter the number of your choice: "
    vehicle = gets.chomp
    case vehicle
    when '1'
      "bike"
    when '2'
      "skateboard"
    when '3'
      "scooter"
    else 
      puts "Sorry, that is not an option."
      vehicle_choice
    end
  end

# Ask the player to choose a destination 
  def destination 
    puts "Choose your destination!"
    puts "1. Park"
    puts "2. Store"
    puts "3. School"
    print "Enter the number of your choice: "
    destination = gets.chomp
    case destination 
    when '1'
      "park"
    when '2'
      "store"
    when '3'
      "school"
    else 
      puts "Sorry, that is not an option."
      destination
    end
  end
  
# Start the game 
  def play_game
    puts "Let's go!"
    puts "#{@player_name} started riding their #{@vehicle} to the #{@destination}."
    puts "The path to the #{@destination} is long and winding." 
    puts "What do you do?"
    puts "1. Keep riding"
    puts "2. Stop and take a break"
    print "Enter the number of your choice: "
    choice = gets.chomp
    case choice 
    when '1'
      puts "#{@player_name} continues riding their #{@vehicle}."
      puts "They eventually make it to the #{@destination}!"
    when '2' 
      puts "#{@player_name} stops and takes a break."
      puts "After their break, they continue riding until they make it to the #{@destination}!"
    else
      puts "Sorry, that is not an option."
      play_game
    end
    puts "Congratulations! #{@player_name} made it to the #{@destination} on their #{@vehicle}!"
    puts "Thanks for playing Ride On!"
  end
end 

# Create a new instance of the Ride On game 
game = RideOn.new
game.new_game