puts "Hamster Name:"
name = gets.chomp

puts "Hamster Volume Level (1-10):"
volume = gets.to_i

puts "Fur Color:"
fur = gets.chomp

puts "Good Adoption Candidate? (y/n):"
adopt = gets.chomp

puts "Estimated Age:"
age = gets.to_i

if age == 0
  age = nil
end

puts "Hamster name: #{name}"
puts "#{name}'s volume level: #{volume}"
puts "#{name}'s fur color: #{fur}"
puts "Is #{name} a good adoption candidate? #{adopt}"

if age == nil
  puts "#{name}'s age is unknown!"
else
  puts "#{name}'s age: #{age}"
end