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

# puts encrypt("zed")


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

puts decrypt("afe")

