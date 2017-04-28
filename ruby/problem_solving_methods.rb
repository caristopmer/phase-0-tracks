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