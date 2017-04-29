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

# Returns an array of first and last name as separate strings, with last name first.
def name_swap(name)
  reversed_name = name.split(' ')
  reversed_name.insert(0, reversed_name.delete_at(1)).join(' ')
end

def v_swap(vowel)

end

def c_swap(consonant)

end


def alias_maker(name)
  alias_full = name_swap(name)

  
end



p alias_maker("Chris McMenomy")