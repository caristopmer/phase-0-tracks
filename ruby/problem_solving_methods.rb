# Challenge 5.6 Pair Program 4/27/17
# 1. Jarred Taylor
# 2. Chris McMenomy

=begin
  
search_array method

Arguments: array, value

Iterate through the passed in array, returning the index of an identical value, if present.
Otherwise return nil if value is not present.

=end

def search_array(arr, value)
  index = 0
  arr.each do |item|
    if item == value
      return index
    end
    index += 1
  end
  nil
end

array = [1, 2, 3, 4, 5, 6]

p search_array(array, 3)

# Fibonacci Method
#
# Arguments: int number of terms in the fibonacci array.
# 
#

def fib(n)
  array = [0, 1]
  (n-2).times { array.push(array[-1] + array[-2])}
  array
end

p fib(10)
p fib(100)

p fib(100).last == 218922995834555169026


# Insertion Sorting Method
#
# Arguments: array
# 
# Method will initialize a new empty array. 
# Set first value of new array to that of original array.
# Iterate through original array, comparing each value to each value in new array.
# Once a value in new array has been found that is greater than it, insert it before that value.
# If no greater value is found, place it at the end of the new array.
# Return new array

# We had a bit of trouble getting sort to work, so we tried it a different way with
# sort2. After discovering the need for a break and better understanding of the insert method,
# they both work properly.

test_array = [4, 19, 7, 257, 11, 48, 953, 1, 28, -8, -51, 66]
test_array2 = [4, 19, 7, 257, 11, 48, 953, 1, 28, -8, -51, 66]

def sort(array)
  final = [array[0]]
  array.delete_at(0)
  array.each do |original|
    placed = false
    counter = 0
    final.each do |sorted|
      if original < sorted
        final.insert(counter, original)
        placed = true
        break
      end
      counter += 1
    end
    if !placed
      final.push(original)
    end
  end
  final
end

def sort2(array)
  final = [array[0]]
  array.delete_at(0)
  array.each do |original|
    placed = false
    final.length.times do |index|
      if original < final[index]
        final.insert(index, original)
        placed = true
        break
      end
    end
    if !placed
      final.push(original)
    end
  end
  final
end

p sort(test_array)

p sort2(test_array2)
