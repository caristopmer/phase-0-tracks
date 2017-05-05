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
  list_array = input.split(' ')
  list_array.each do |item|
    list[item] = 1
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
  list[new_item] = quantity
end

p add_item(list, "bananas", 4)
p list

# Method to remove an item from the list
# remove_item(hash, item)
# input: hash, item
# steps: locate then item in our hash and fully remove. If it isn't there, do nothing/ return false
# output: updated hash

def remove_item(list, item)
  list.delete(item)
end

p remove_item(list, "cereal")
p list

# Method to update the quantity of an item
# update_quantity()
# input: hash, item, new quantity
# steps: find item in our hash, and change the value to the new quantity.
# output: updated hash

def update_quantity(list, item, new_quantity)
  list[item] = new_quantity
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
    puts "#{item}: x#{quantity}"
  end
  puts "----------"
end

print_list(list)




