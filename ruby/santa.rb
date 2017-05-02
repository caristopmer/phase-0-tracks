# Santa Class

class Santa

  def initialize(gender, ethnicity)
    puts "Initializing Santa instance..."
    @gender = gender
    @ethnicity = ethnicity
    @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
    @age = 0

  end

  def speak
    puts "Ho, ho, ho! Haaaappy holidays!"
  end

  def eat_milk_and_cookies(cookie_type)
    puts "That was a good #{cookie_type}!" 
  end

  def about
    puts "-----"
    puts "Gender: #{@gender}"
    puts "Ethnicity: #{@ethnicity}"
    puts "Reindeer ranking: #{@reindeer_ranking}"
    puts "Age: #{@age}"
    puts "-----"
  end

end


# Driver Code

# santa1 = Santa.new
# santa1.speak
# santa1.eat_milk_and_cookies("Oreo")

santas = []
ex_genders = ["male", "female", "agender", "bi-gender", "gendermorphus"]
ex_ethnicities = ["Hispanic", "Black", "White", "prefer not to say", "Martian"]

# Creating diverse instances of every combination of gender and ethnicity.
ex_genders.each do |gender|
  ex_ethnicities.each do |eth|
    santas << Santa.new(gender, eth)
  end
end

santas.each do |santa|
  santa.about
end