=begin
  Alias Maker Method

  Arguments: Spy's real name, string

  Method will create an alias for the spy by:
  - first swapping first and last names.
  - Changing all vowels in name to the next vowel in 'aeiou', and all consonants to the next 
  consonant in the alphabet.
  
  - First, split name into array of first and last name.
  - Nameswap method: Create new array with last name first, or swap them in original array somehow.
  - Use vswap and cswap methods to perform changes on individual characters within conditional logic to
  determine if current char is in vowel string or consonant string.
  - Return the completed alias as a string.
=end

$vowels = "aeiou"
$consonants = "bcdfghjklmnpqrstvwxyz"

# Returns a string of name with first and last names swapped, separated by a space.
def name_swap(name)
  reversed_name = name.split(' ')
  reversed_name.insert(0, reversed_name.delete_at(1)).join(' ')
end

# Returns the character after the passed in vowel in the $vowels string.
def v_swap(vowel)
  if vowel == $vowels.split('').last
    vowel = $vowels.split('').first
  else
    vowel = $vowels[($vowels.index(vowel) + 1)]
  end
end

# Returns the character after the passed in consonant in the $consonants string.
def c_swap(consonant)
  if consonant == $consonants.split('').last
    consonant = $consonants.split('').first
  else
    consonant = $consonants[($consonants.index(consonant) + 1)]
  end
end

def alias_maker(name)
  alias_full = name_swap(name)
  alias_full = alias_full.downcase.split('')
  alias_full.map! do |letter|
    if $vowels.include? letter
      v_swap(letter)
    elsif $consonants.include? letter
      c_swap(letter)
    else
      " "
    end
  end
  alias_full = alias_full.join('').split(' ')
  alias_full.map! { |word| word.capitalize }
  alias_full = alias_full.join(' ')
end

# Begin Driver Code

  spy_names = []
  spy_aliases = []
  counter = 0
  puts "Welcome to the Alias Manager 9000!"

loop do
  puts "Please enter the name you would like to generate an alias for: (Enter 'quit' to quit!)"
  spy_names << gets.chomp
  if spy_names[counter].downcase == "quit"
    puts "Thank you for using the Alias Manager 9000!"
    puts "Session Summary:"
    while counter >= 0
      puts "#{spy_names[counter]} is also known as #{spy_aliases[counter]}."
      counter -= 1
    end
    puts "Have a great day!"
    break
  end
  spy_aliases << alias_maker(spy_names[counter])
  puts "The alias for this name is:"
  puts spy_aliases[counter]
  counter += 1
end
