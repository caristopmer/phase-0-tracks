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

  # Setter Methods
  def celebrate_birthday
    @age += 1
  end

  def get_mad_at(reindeer)
    @reindeer_ranking << @reindeer_ranking.delete(reindeer)    
  end

  def gender=(new_gender)
    @gender = new_gender
  end

  # Getter Methods
  def age
    @age
  end

  def ethnicity
    @ethnicity
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

# santas.each do |santa|
#   santa.about
# end

p santas[12].age
p santas[12].ethnicity

santas[12].about
santas[12].celebrate_birthday
santas[12].get_mad_at("Dasher")
santas[12].gender = "Mystery Gender"
santas[12].about
