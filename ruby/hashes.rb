=begin
  Pseudocode for Interior Designer Program:
  Program will take in data from the user and store it in a hash. Data field will include:
  - name /string
  - age /int
  - # children /int
  - decor theme /string
  - three favorite colors /array of strings
  - loves wood floors /boolean
  - wants a fish tank /boolean

  Input will be converted to correct type upon receiving
  Once all data is inputted, the hash will be printed to the screen.
  Ask the user once if they would like to update one of the values in the hash.
    - if "none" is entered, update nothing
    - otherwise, whatever key is entered can be given a new value via user input.
    - input string will be converted to symbol to update the correct key.

  Finally, print the updated hash to the screen and exit.  
=end

design_hash = {
  name: "John",
  age: 0,
  children: 0,
  decor_theme: "none",
  fav_colors: [],
  wood_floors: false,
  fish_tank: false,
}

puts "Hello! Please enter your name:"
design_hash[:name] = gets.chomp

puts "What is your age?"
design_hash[:age] = gets.chomp.to_i

puts "How many children do you have?"
design_hash[:children] = gets.chomp.to_i

puts "What decor theme would you like to follow?"
design_hash[:decor_theme] = gets.chomp

puts "What are your three favorite colors? (Please enter one at a time.)"
design_hash[:fav_colors] << gets.chomp
design_hash[:fav_colors] << gets.chomp
design_hash[:fav_colors] << gets.chomp

puts "Do you like wood floors?"
floors = gets.chomp
design_hash[:wood_floors] = floors.downcase == "y" || floors.downcase == "yes"

puts "Would you like a fish tank in you house?"
fishtank = gets.chomp
design_hash[:fish_tank] = fishtank.downcase == "y" || fishtank.downcase == "yes"

puts design_hash

puts "Please enter a key you want to change the value of if desired, otherwise enter 'none':"
change = gets.chomp.downcase.to_sym

if change != :none
  if change != :fav_colors
    puts "Please enter the new value for #{change}."
    update = gets.chomp
  end
  if change == :age || change == :children
    update = update.to_i
  elsif change == :wood_floors || change == :fish_tank
    update = update.downcase == "y" || update.downcase == "yes"
  elsif change != :name && change != :decor_theme
    puts "Please enter your updated favorite colors one at a time:"
    update = [gets.chomp, gets.chomp, gets.chomp]    
  end
  design_hash[change] = update
end

puts design_hash