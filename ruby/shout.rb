=begin
module Shout
  def self.yell_angrily(words)
    words + "!!!" + " :("
  end

  def self.yell_happily(words)
    words + "!!!" + " :) :)"
  end
end

p Shout.yell_happily("Hello")
p Shout.yell_angrily("Hell no")
=end

# Make a mixin version of the Shout module instead.

module Shout
def yell_angrily(words)
    words + "!!!" + " :("
  end

  def yell_happily(words)
    words + "!!!" + " :) :)"
  end
end

# Write two classes representing anything that might shout, and include the Shout module in those classes.
class Human
  include Shout
end

class Vampire
  include Shout
end

# Test your work by adding driver code at the bottom of the file that instantiates instances of your classes and calls the two module methods on each instance.

human = Human.new
p human.yell_happily("Hello")
p human.yell_angrily("NO")

vampire = Vampire.new
p vampire.yell_happily("Blood")
p vampire.yell_angrily("Garlic")
