# Array Drills

zombie_apocalypse_supplies = ["hatchet", "rations", "water jug", "binoculars",
                              "shotgun", "compass", "CB radio", "batteries"]

# 1. Iterate through the zombie_apocalypse_supplies array,
# printing each item in the array separated by an asterisk

def asterisk_print(arr)
  arr.each do |item|
    if item != arr.last
      print item + " * "
    else
      print item
    end
  end
end

asterisk_print(zombie_apocalypse_supplies)
puts ""

# 2. In order to keep yourself organized, sort your zombie_apocalypse_supplies
# in alphabetical order. Do not use any special built-in methods.

def insert_sort(arr)
  new_array = [arr[0]]
  arr.delete_at(0)
  
  arr.each do |old_item|
    index = 0
    inserted = false
    new_array.each do |new_item|
      if old_item.downcase < new_item.downcase
        new_array.insert(index, old_item)
        inserted = true
        break
      end
      index += 1
    end
    if !inserted
      new_array.push(old_item)
    end
  end
  new_array
end

p insert_sort(zombie_apocalypse_supplies)

zombie_apocalypse_supplies = ["hatchet", "rations", "water jug", "binoculars",
                              "shotgun", "compass", "CB radio", "batteries"]
# 3. Create a method to see if a particular item (string) is in the
# zombie_apocalypse_supplies. Do not use any special built-in methods.
# For instance: are boots in your list of supplies?

def have_item?(item, array)
  item_found = false
  array.each do |item2|
    if item2 == item
      item_found = true
    end
  end
  item_found
end

p have_item?("shotgun", zombie_apocalypse_supplies)
p have_item?("wig", zombie_apocalypse_supplies)
p have_item?("compass", zombie_apocalypse_supplies)
p have_item?("popcorn", zombie_apocalypse_supplies)

# 4. You can't carry too many things, you've only got room in your pack for 5.
# Remove items in your zombie_apocalypse_supplies in any way you'd like,
# leaving only 5. Do not use any special built-in methods.

def bag_dumper(arr)
  arr.each do |item|
    if arr.length > 5
      arr.delete_at(arr.length - 1)
    end
  end
  arr
end

p bag_dumper(zombie_apocalypse_supplies)

zombie_apocalypse_supplies = ["hatchet", "rations", "water jug", "binoculars",
                              "shotgun", "compass", "CB radio", "batteries"]
# 5. You found another survivor! This means you can combine your supplies.
# Create a new combined supplies list out of your zombie_apocalypse_supplies
# and their supplies below. You should get rid of any duplicate items.
# Find the built-in method that helps you accomplish this in the Ruby
# documentation for Arrays.
other_survivor_supplies = [ "warm clothes", "rations", "compass", "camp stove",
                            "solar battery", "flashlight"]

def supply_combiner(arr1, arr2)
  (arr1 + arr2).uniq
end

p supply_combiner(zombie_apocalypse_supplies, other_survivor_supplies)


# Hash Drills

extinct_animals = {
  "Tasmanian Tiger" => 1936,
  "Eastern Hare Wallaby" => 1890,
  "Dodo" => 1662,
  "Pyrenean Ibex" => 2000,
  "Passenger Pigeon" => 1914,
  "West African Black Rhinoceros" => 2011,
  "Laysan Crake" => 1923
}

# 1. Iterate through extinct_animals hash, printing each key/value pair
# with a dash in between the key and value, and an asterisk between each pair.

def hash_print(hash)
  hash.each do |k, v|
    if k != k.last
      print k + " - " + v + " * "
    else
      print item
    end
  end
end

asterisk_print(zombie_apocalypse_supplies)
puts ""



# 2. Keep only animals in extinct_animals if they were extinct before
# the year 2000. Do not use any special built-in methods.
# ----

# 3. Our calculations were completely off, turns out all of those animals went
# extinct 3 years before the date provided. Update the values in extinct_animals
# so they accurately reflect what year the animal went extinct.
# Do not use any special built-in methods.
# ----

# 4. You've heard that the following animals might be extinct, but you're not sure.
# Check if they're included in extinct_animals, one by one:
# "Andean Cat"
# "Dodo"
# "Saiga Antelope"
# Do not use any special built-in methods.
# ----

# 5. We just found out that the Passenger Pigeon is actually not extinct!
# Remove them from extinct_animals and return the key value pair as a two item array.
# Find the built-in method that helps you accomplish this in the Ruby documentation
# for Hashes.
# ----
