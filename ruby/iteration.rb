# Challenge 5.3 Mandatory Pair
# Chris McMenomy
# Kevin Cai
# 4/25/17

#Release 0
#countup will count up from 0 to integer passed to it. It will finally run a code block stating the
#number counter to.

def countup(int)
  counter = 0
  while counter < int
    puts counter 
    counter += 1
  end
  yield(int)
end

countup(10) { |int| puts "This concludes the countup method. We counted up to #{int}." }


zoo_animals = ["lion", "tiger", "snake", "monkey"]
visitor = {
  "name" => "John",
  "age" => 30,
  "fav_color" => "green"
}

#Release 1 array .each iteration
p zoo_animals
zoo_animals.each do |animal|
  puts "The zoo contains a #{animal}"
end
p zoo_animals

#Release 1 array .map iteration
p zoo_animals
zoo_animals.map! do |animal|
  animal = "bird"
  puts "The zoo contains a #{animal}"
  animal
end
p zoo_animals

#Release 1 hash .each iteration
visitor.each do |key, value|
  puts "#{key}: #{value}"
end

#Release 1 hash .map iteration? Only attempted this as it is in the grading rubric (maybe a typo).
#There is no .map method in the docs for hash, and calling .map on a hash returns an array as expected,
#and as can be seen below 
new_visitor = visitor.map do |k, v|
  k = k.upcase
  v = "N/A"
end
p visitor
p new_visitor

#Release 2

#Array
random_number = [ 1, 5, 55, -6, 222 ]

#1
puts random_number.delete_if { |x| x > 50 }
p random_number
#2
random_number = [ 1, 5, 55, -6, 222 ]
puts random_number.keep_if { |x| x > 200 }
p random_number
#3
random_number = [ 1, 5, 55, -6, 222 ]
puts random_number.select { |x| x.even? }
p random_number
#4
puts random_number.drop_while { |i| i < 2 }
p random_number


#Hash
student_data = {
  "a" => 8,
  "b" => 82,
  "c" => 91,
  "d" => 100
}

#1
puts student_data.delete_if { |key, value| key < "c" }
p student_data

student_data = {
  "a" => 8,
  "b" => 82,
  "c" => 91,
  "d" => 100
}

#2
puts student_data.keep_if { |key, value| value > 80 }
p student_data

student_data = {
  "a" => 8,
  "b" => 82,
  "c" => 91,
  "d" => 100
}

#3
puts student_data.select { |key, value| key == "b" || key == "c" }
p student_data

#4
student_data = {
  "a" => 8,
  "b" => 82,
  "c" => 91,
  "d" => 100
}

puts student_data.delete_if { |key, value| student_data.length > 1 }
p student_data

# I know this isn't an ideal way to do this, but this seems to be at least somewhat meeting the
# criteria of the assignment since it was indicated we might not find a perfectly working
# method for this one. The delete_if method will continue to delete hash elements until
# the hash length indicated is reached.