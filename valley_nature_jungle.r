#1 
# This will create an interactive window for the user to select a car to ride: 
choices <- c("Maserati", "Lamborghini", "Ferrari", "Porsche") 
user_choice <- menu("Ride on,", choices)

#2 
# Store the car of choice in an object
ride <- choices[user_choice] 

#3 
# Print the car of choice
print(paste("You chose to ride in a", ride))

#4 
# Ask user to select color and store it
colors <- c("Red", "Blue", "Black", "White") 
user_color <- menu("Pick a color for your ride", colors)

#5 
# Store color of choice in an object
car_color <- colors[user_color]

#6 
# Print the color of choice
print(paste("You chose the color", car_color))

#7 
# Print a message congratulating the user
message <- paste("Congratulations! You will be riding in a", ride, "painted", car_color)
print(message)

#8 
# Get the user's name
name <- readline("What is your name? ") 

#9 
# Print message personalized to user's name
print(paste("Enjoy the ride,", name, "!"))

#10 
# Create vectors of car properties 
motor <- c("V8", "V6", "V4", "Twin-turbocharged") 
interior <- c("Leather", "Cloth", "Velvet")
sound_system <- c("Top of the line", "Premium", "Basic", "None")

#11 
# Ask user to select motor and store it
user_motor <- menu("Pick a motor for your ride", motor)

#12 
# Store motor of choice in an object
car_motor <- motor[user_motor]

#13 
# Print the motor of choice
print(paste("You chose the", car_motor, "motor"))

#14 
# Ask user to select interior and store it
user_interior <- menu("Pick an interior for your ride", interior)

#15 
# Store interior of choice in an object
car_interior <- interior[user_interior]

#16 
# Print the interior of choice
print(paste("You chose the", car_interior, "interior"))

#17 
# Ask user to select sound system and store it
user_sound_system <- menu("Pick a sound system for your ride", sound_system)

#18 
# Store sound system of choice in an object
car_sound_system <- sound_system[user_sound_system]

#19 
# Print the sound system of choice
print(paste("You chose the", car_sound_system, "sound system"))

#20 
# Print out all the details of the car
ride_details <- paste(ride, "painted", car_color, "with a", car_motor, "motor and", car_interior, "interior,", "equipped with a", car_sound_system, "sound system.")
print(paste("Your car details are:", ride_details))

#21 
# Create a data frame of car details 
ride_df <- data.frame( Ride = ride,
                       Color = car_color,
                       Motor = car_motor,
                       Interior = car_interior,
                       Sound_System = car_sound_system)

#22 
# Print the data frame 
print(ride_df)

#23 
# Print message personalized to user's name
print(paste("Enjoy your ride,", name, "!"))

#24 
# Calculate cost of ride
cost <- ifelse(car_motor == "V8", 8000,
               ifelse(car_motor == "V6", 5000,
                      ifelse(car_motor == "V4", 3500, 2500)))

#25 
# Print the cost of the ride
print(paste("The cost of your ride is $", cost, "USD"))

#26 
# Offer payment plan for ride
payment_plan <- ifelse(cost > 1500, "We offer a payment plan", "We accept payment in full")

#27 
# Print the payment plan
print(payment_plan)

#28 
# Ask user if they would like to purchase the ride
user_purchase <- menu("Would you like to purchase the ride?", c("Yes", "No"))

#29 
# Store response in an object 
purchase <- ifelse(user_purchase == 1, "YES", "NO")

#30 
# Print response
print(paste("Your response is:", purchase))

#31 
# Print message
if (purchase == "YES") {
  print(paste("Thank you for your purchase,", name, "!"))
} else {
  print("Have a nice day!")
}

#32 
# Create a vector of car options 
options <- c("Sport Tuning Package", "Tinted Windows", "Polished Rims")

#33 
# Ask user if they would like to add any options
options_yn <- menu("Would you like to add any options to your ride?", c("Yes", "No"))

#34 
# Store response in an object
options_purchase <- ifelse(options_yn == 1, "YES", "NO")

#35 
# Print response
print(paste("Your response is:", options_purchase))

#36 
# Create an empty vector to store options
selected_options <- c()

#37 
# Ask user to select options and store them
if (options_purchase == "YES") {
  for (option in options) {
    option_choice <- menu(paste("Would you like to add the", option, "option to your ride?"), c("Yes", "No"))
    if (option_choice == 1) {
      selected_options <- c(selected_options, option)
    }
  }
}

#38 
# Print list of selected options
print(paste("You selected the following options:"))
for (opt in selected_options) {
  print(opt)
}

#39 
# Print message
if (length(selected_options) > 0) {
  print(paste("Your ride is now even better,", name, "!"))
} else {
  print("Have a great ride!")
}

#40 
# Create a matrix of car details 
ride_matrix <- matrix( c(ride, car_color, car_motor, car_interior, car_sound_system, cost, purchase, options_purchase, selected_options),
                       nrow = 1,
                       dimnames = list(NULL, c("Ride", "Color", "Motor", "Interior", "Sound System", "Cost", "Purchase", "Options Purchase", "Selected Options")))

#41 
# Print matrix
print(ride_matrix)

#42 
# Save matrix to file
write.csv(ride_matrix, file = 'Ride_On.csv')

#43 
# Get current time
curr_time <- Sys.time()

#44 
# Print current time
print(paste("The current time is", format(curr_time, "%c")))

#45 
# Calculate a ride time
ride_time <- curr_time + 60*60*2

#46 
# Print ride time
print(paste("Your ride will be ready at", format(ride_time, "%c")))

#47 
# Print a final message
print(paste("Thank you for choosing Ride On,", name, "!"))