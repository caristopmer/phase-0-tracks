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



loop_controller = true
met1
met2
met3
met4

while loop_controller == true
  if age == by_age && (gbread || health_ins)
    result = "Probably not a vampire."
  elsif age != by_age && (gbread == false || health_ins == false)
    result = "Probably a vampire."
  elsif age != by_age && gbread == false && health_ins == false
    result = "Almost certainly a vampire."
  elsif name == "Drake Cula" || name == "Tu Fang"
    result = "Definitely a vampire."
  else
    result = "Results Inconclusive."
  end
end