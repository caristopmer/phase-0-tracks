puts "Thank you for taking this new employee survey!"

puts "What is your name?"
name = gets.chomp

puts "How old are you?"
age = gets.chomp.to_i

puts "What year were you born?"
birth_year = gets.chomp.to_i
by_age = 2017 - birth_year

puts "Our company cafeteria serves garlic bread. Should we order some for you? (y/n)"
gbread = gets.chomp

if gbread == "y"
  gbread = true
elsif gbread == "n"
  gbread = false
end

puts "Would you like to enroll in the company's health insurance?"
health_ins = gets.chomp

if health_ins == "y"
  health_ins = true
elsif health_ins == "n"
  health_ins = false
end




puts "Survey results:"
puts result

=begin My entirely too complicated initial attempt at this...
loop_controller = true
met1 = false
met2 = false
met3 = false
met4 = false

while loop_controller == true
  if age == by_age && (gbread || health_ins) && met1 == false
    result = "Probably not a vampire."
    met1 = true
  elsif age != by_age && (gbread == false || health_ins == false) && met2 == false
    result = "Probably a vampire."
    met2 = true
  elsif age != by_age && gbread == false && health_ins == false && met3 == false
    result = "Almost certainly a vampire."
    met3 = true
  elsif name == "Drake Cula" || name == "Tu Fang" && met4 == false
    result = "Definitely a vampire."
    met4 = true
    break
  else
    result = "Results Inconclusive."
    loop_controller = false
  end
end
=end