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