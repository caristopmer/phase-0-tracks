# Santa Class

class Santa
  attr_reader :ethnicity
  attr_accessor :age, :reindeer_ranking, :gender


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
    puts "Gender: #{@gender}"
    puts "Ethnicity: #{@ethnicity}"
    puts "Reindeer ranking: #{@reindeer_ranking}"
    puts "Age: #{@age}"
    puts "---------------"
  end

  def celebrate_birthday
    @age += 1
  end

  def get_mad_at(reindeer)
    @reindeer_ranking << @reindeer_ranking.delete(reindeer)    
  end

end

# Release 4 Driver Code

santa_number = 1000
santas = []
example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A", "mystery gender"]
example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A", "Martian"]

santa_number.times do |this_santa|
  santas << Santa.new(example_genders[rand(example_genders.length)], example_ethnicities[rand(example_ethnicities.length)])
  santas[this_santa].age = rand(140)
  santas[this_santa].about
end


# Driver Code Releases 1-3

# santa1 = Santa.new
# santa1.speak
# santa1.eat_milk_and_cookies("Oreo")

# santas = []
# ex_genders = ["male", "female", "agender", "bi-gender", "gendermorphus"]
# ex_ethnicities = ["Hispanic", "Black", "White", "prefer not to say", "Martian"]

# # Creating diverse instances of every combination of gender and ethnicity.
# ex_genders.each do |gender|
#   ex_ethnicities.each do |eth|
#     santas << Santa.new(gender, eth)
#   end
# end

# # santas.each do |santa|
# #   santa.about
# # end

# p santas[12].age
# p santas[12].ethnicity

# santas[12].about
# santas[12].celebrate_birthday
# santas[12].get_mad_at("Dasher")
# santas[12].gender = "Mystery Gender"
# santas[12].about

# santas[12].age = 99
# p santas[12].age
