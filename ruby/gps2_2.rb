# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # Parse string to extract individual items
  # Store inputted items as keys in a hash
  # set default quantity of 1 for each item
  # print the list to the console [can you use one of your other methods here?] - use print method 
# output: return the created hash, populated with items and their quantities.

# Method to add an item to a list
# add_item(hash, item, quantity)
# input: list, item name, and optional quantity
# steps: add new key and value to the hash using the item name and quantity.
# output: updated hash

# Method to remove an item from the list
# remove_item(hash, item)
# input: hash, item
# steps: locate then item in our hash and fully remove. If it isn't there, do nothing/ return false
# output: updated hash

# Method to update the quantity of an item
# update_quantity()
# input: hash, item, new quantity
# steps: find item in our hash, and change the value to the new quantity.
# output: updated hash

# Method to print a list and make it look pretty
# input: hash
# steps: Print out our grocery list line by line, with item and quantity
# output: printed list