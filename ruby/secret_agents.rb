=begin Encrypt
- take in password string, password
- set index to 0
- within loop, password[index] = password[index].next, until password .length has been reached
- return the encrypted password.
=end

def encrypt(pw)
  index = 0
  while index < pw.length
    if pw[index] == "z"
      pw[index] = "a"
      index += 1     
    end
    pw[index] = pw[index].next
    index += 1
  end
  pw
end

=begin Decrypt
  - take in password string, password
  - set index to 0
  - set alphabet string variable to "abc...."
  - within loop
      - password[index] = alpha[alpha.index("password[index]") - 1]
  - loop until password.length has been reached.
  -return decrypted password.
=end

def decrypt(pw)
  index = 0
  alpha = "abcdefghijklmnopqrstuvwxyz"
  while index < pw.length
    pw[index] = alpha[alpha.index(pw[index]) - 1]
    index += 1
  end
  pw
end

# This method call returns the same password. The "swordfish password is first being encrypted by the
# encrypt method. The string returned by the encrypt method is what is being decrypted by the decrypt method.
# Thus, the return of this nested method is unchanged from the original string.
# puts decrypt(encrypt("swordfish"))


=begin Driver Code
Give user decrypt encrypt option
  -save response
Ask for password
  -save password
Run through decrypt or encrypt function
=end

valid_input = false

while valid_input == false
  puts "Do you want to encrypt or decrypt?"
    option = gets.chomp
    if option == "encrypt" || option == "decrypt"
      valid_input = true
    else
      puts "I did not understand you."
    end
end
  puts "What is your password?"
    pw = gets.chomp
  
    if option == "encrypt"
      puts "Your encrypted password is: #{encrypt(pw)}"
    else option == "decrypt"
      puts "Your decrypted password is: #{decrypt(pw)}"
    end