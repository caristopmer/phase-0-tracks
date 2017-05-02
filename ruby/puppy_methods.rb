class Puppy

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

# Driver Code

fido = Puppy.new

p fido

fido.fetch("bone")

fido.speak(5)

fido.roll_over

p fido.dog_years(5)

fido.puppy_sit

