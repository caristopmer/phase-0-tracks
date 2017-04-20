=begin Encrypt

- take in password string, password
- set index to 0
- within loop, password[index] = password[index].next, until password .length has been reached
- return the encrypted password.
=end

def encrypt(pw)
  index = 0
  while index < pw.length
    pw[index] = pw[index].next
    index += 1
  end
  # p pw
end

encrypt("password")


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
  # p pw
end

decrypt(encrypt("password"))

