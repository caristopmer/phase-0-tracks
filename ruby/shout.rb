module Shout
 def self.yell_angrily(words)
   words + "!!!" + " :("
 end

 def self.yelling_happily(words)
   words + "!" + " :D"
 end
end

p Shout.yell_angrily("Ouch, that hurt")
p Shout.yelling_happily("It's my birthday")