puts "How many employees will be processed?"
n = gets.chomp.to_i

while n > 0
  puts "Thank you for taking our new employee survey!"
  
  # Questions to collect data from the employee.

  puts "What is your name?"
  name = gets.chomp
  
  puts "How old are you, or how old will you be turning this year?"
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

  puts "Please input any allergies you have. Type done when complete."
  sun_allergy = false

  loop do
    allergy = gets.chomp
    if allergy == "sunshine"
      sun_allergy = true
      break
    elsif allergy == "done"
      break
    end
  end
  
  #If statements to analyze responses to determine likelihood of vampireness.
  
  result = "Results Inconclusive."
  
  if age == by_age && (gbread || health_ins)
    result = "Probably not a vampire."
  end
  if age != by_age && (gbread == false || health_ins == false)
    result = "Probably a vampire."
  end
  if age != by_age && gbread == false && health_ins == false
    result = "Almost certainly a vampire."
  end
  if name == "Drake Cula" || name == "Tu Fang" || sun_allergy
    result = "Definitely a vampire."
  end
  
  puts "All done! Thank you for your time. Please give us a moment to process your results..."
  sleep(2)
  puts "Survey results:"
  puts result
  n -= 1
end




=begin My entirely too complicated initial attempt at release 2...

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