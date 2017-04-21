puts "What is your name?"
name = gets.chomp

puts "How old are you?"
age = gets.chomp.to_i

puts "What year were you born?"
birth_year = gets.chomp.to_i

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