#
# Challenge 6.2 Pair Programmed 5/2/17
# - Alan English
# - Chris McMenomy
#

class Puppy

  def initialize
    puts "Initializing new puppy instance..."
  end

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def speak(int)
    int.times { puts "Woof!" }
  end

  def roll_over
    puts "*rolls over*"    
  end

  def dog_years(age)
    age * 7    
  end

  def puppy_sit
    puts "The puppy sat down!"
  end  
end

# Puppy Driver Code

fido = Puppy.new

p fido

fido.fetch("bone")

fido.speak(5)

fido.roll_over

p fido.dog_years(5)

fido.puppy_sit


# Kittens Class

class Kittens

  def initialize
    puts "Initializing new kittens instance..."
  end

  def lounge(location)
    puts "The kitten is lounging on the #{location}!"
  end

  def catch_mice(n)
    n.times { |mouse_num| puts "The kitten has caught mouse number #{mouse_num+1}."}
  end

end

# Kittens Driver Code

kitty = Kittens.new

kitty.catch_mice(5)

kitty.lounge("window sill")

counter = 1
kitten_array = []
loop do 
  if counter <= 50
    kitten_array << Kittens.new
    counter += 1
  else
    break
  end
end

kitten_array.each do |kitten|
  kitten.lounge("couch")
  kitten.catch_mice(1)
end
