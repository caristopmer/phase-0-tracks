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