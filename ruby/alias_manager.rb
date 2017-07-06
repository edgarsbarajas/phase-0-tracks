#Dwncase all characters
#split into array of characters
#Manipulate all data
#Join back to one string
#Split into 2 strings to reverse the first and last name
#Iterate the string array to capitalize first letter of each name
#Join the array to complete


def swap_letters(word)
  vowels = ["a", "e", "i", "o", "u"]

  word.map! do |letter|
    if vowels.include?(letter)
      if vowels.index(letter)+1 >= vowels.length
        letter = vowels[0]
      else
        letter = vowels[vowels.index(letter)+1]
      end
    elsif letter == " "
      letter
    else
      letter = letter.next
    end
  end
end

def fake_name(name)

  # downcase the string, and convert to character array
  name.downcase!
  name = name.split("")

  #manipulate the data
  swap_letters(name)

  #join back to one string
  name = name.join("")

  #split into 2 separate strings
  name = name.split(" ")

  #Reverse the first and last name
  name.reverse!

  #capitalize each name
  name.map! do |name|
    name.capitalize!
  end

  #join as one string to complete
  name = name.join(" ")
end

#Provide a user interface that lets a user enter a name and get a fake name back.
#Let the user do this repeatedly until they decide to quit by typing 'quit'.
loop do
  print "Enter a name ('quit' to exit): "
  name = gets.chomp

  break if name == "quit"

  puts "Fake name is #{fake_name(name)}"
end

