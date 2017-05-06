# module Shout
#  def self.yell_angrily(words)
#    words + "!!!" + " :("
#  end

#  def self.yelling_happily(words)
#    words + "!" + " :D"
#  end
# end

# p Shout.yell_angrily("Ouch, that hurt")
# p Shout.yelling_happily("It's my birthday")

module Shout
  def yell_angrily(words)
    words + "!!!" + " :("
  end
  def yelling_happily(words)
    words + "!" + " :D"
  end
end

class Coach
  include Shout
end

class DrillSergeant
  include Shout
end

coach = Coach.new
p coach.yell_angrily("Get off the field")
p coach.yelling_happily("Nice catch")

sergeant = DrillSergeant.new
p sergeant.yell_angrily("Drop and give me 20")
p sergeant.yelling_happily("Good work soldier")