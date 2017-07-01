# Replace in the "<???>" with the appropriate method (and arguments, if any).
# Uncomment the calls to catch these methods red-handed.

# When there's more than one suspect who could have
# committed the crime, add additional calls to prove it.

# "iNvEsTiGaTiOn".swapcase
# => “InVeStIgAtIoN”

p "tHiS iS sWaPpEd".swapcase

# "zom".insert(index, other_string)
# => “zoom”

p "zom".insert(1, "o")

# "enhance".center(width, padstr="")
# => "    enhance    "

p "enhance".center(20)

# "Stop! You’re under arrest!".upcase
# => "STOP! YOU’RE UNDER ARREST!"

p "Stop! You’re under arrest!".upcase

# "the usual".(index, other_string)
# "the usual" << String
#=> "the usual suspects"

p "the usual".insert(9, " suspects")
p "the usual" << " suspects"

# " suspects".insert(index, string)
# => "the usual suspects"

p " suspects".insert(0, "the usual")

# "The case of the disappearing last letter".chomp(string)
# "The case of the disappearing last letter".chop
# "The case of the disappearing last letter" slice(range)
# => "The case of the disappearing last lette"

p "The case of the disappearing last letter".chomp("r")
p "The case of the disappearing last letter".chop
p "The case of the disappearing last letter"[0..-2]

# "The mystery of the missing first letter"[range]
# => "he mystery of the missing first letter"

p "The mystery of the missing first letter"[1..-1]

# "Elementary,    my   dear        Watson!".squeeze(other_string)
# => "Elementary, my dear Watson!"

p "Elementary,    my   dear        Watson!".squeeze(" ")

# "z".ord
# => 122
# (What is the significance of the number 122 in relation to the character z?)

p "z".ord
# 122 is the ASCII value of z

# "How many times does the letter 'a' appear in this string?".count(string)
# => 4

p "How many times does the letter 'a' appear in this string?".count("a")
