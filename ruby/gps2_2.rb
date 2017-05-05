# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # Parse string to extract individual items
  # Store inputted items as keys in a hash
  # set default quantity of 1 for each item
  # print the list to the console [can you use one of your other methods here?] - use print method 
# output: return the created hash, populated with items and their quantities.

def create_list(input)
  list = {}
  input.split(' ').each do |item|
    list[item.downcase] = 1
  end 
  list
end

p list = create_list("carrots apples cereal pizza")

# Method to add an item to a list
# add_item(hash, item, quantity)
# input: list, item name, and optional quantity
# steps: add new key and value to the hash using the item name and quantity.
# output: updated hash

def add_item(list, new_item, quantity)
  list[new_item.downcase] = quantity
end

p add_item(list, "bananas", 4)
p list

# Method to remove an item from the list
# remove_item(hash, item)
# input: hash, item
# steps: locate then item in our hash and fully remove. If it isn't there, do nothing/ return false
# output: updated hash

def remove_item(list, item)
  list.delete(item.downcase)
end

p remove_item(list, "cereal")
p list

# Method to update the quantity of an item
# update_quantity()
# input: hash, item, new quantity
# steps: find item in our hash, and change the value to the new quantity.
# output: updated hash

def update_quantity(list, item, new_quantity)
  list[item.downcase] = new_quantity
end

p update_quantity(list, "carrots", 9)
p list

# Method to print a list and make it look pretty
# input: hash
# steps: Print out our grocery list line by line, with item and quantity
# output: printed list

def print_list(list)
  puts "----------"
  list.each do |item, quantity|
    puts "#{item.capitalize}: x#{quantity}"
  end
  puts "----------"
end

# Release 2 Test Driver Code

add_item(list, "lemonade", 2)
add_item(list, "tomatoes", 3)
add_item(list, "onions", 1)
add_item(list, "ice cream", 4)


print_list(list)

remove_item(list, "lemonade")

print_list(list)

update_quantity(list, "ice cream", 1)

print_list(list)

=begin
  
Reflection Section

1. Pseudocode is something I definitely want to work more on. I am always to eager to code solutions
right away and don't always do a very good job of outlining my intentions in plain english first.
The provided pseudocode template was great in giving me an idea of how to plan out the problem with
detailed methods.
2. I used a hash for this problem for the sake of keeping track of both the item and its quantity.
I suppose this problem could have also been tackled using multiple arrays, but that would lead to extra
work and unnecessary complexity.
3. A method in Ruby returns the last evaluated expression within it, using implicit return. However, 
can also be return using return statements if so desired.
4. Methods can take pretty much anything as arguments apparently. Everything in Ruby is an object,
and methods can take in objects as their arguments.
5. Passing information between methods can be done by using a method as another method's parameter, 
by calling a method on an object that is being passed in as an argument to achieve the desired argument, 
or simply using a global variable that is visible to all methods in a program.
6. Honestly, I'm feeling pretty solid in pretty much all the facets of my Ruby learning in weeks 4 and 5.
Week 5 was pretty tough initially, but practice and repetition has helped me to get much more comfortable.
If anything I still want to get more work with hashes and interacting with/iterating through them just
to get more comfortable with proper syntax dealing with modifying keys vs. values.
  
=end
