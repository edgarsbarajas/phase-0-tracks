#split first and last name into an array of two
#swap the places of first and last name
#split each element into an array of characters
#iterate through an element
#check if the character is a vowel, if it is: make it the next vowel in the vowel array.
#if it not a vowel: make it next consonant.
#join the array of characters
#join the array of 2 two words

def swap_letters(word)
  vowels = ["a", "e", "i", "o", "u"]

  word.map! do |letter|
    if vowels.include?(letter)
      if vowels.index(letter)+1 >= vowels.length
        letter = vowels[0]
      else
        letter = vowels[vowels.index(letter)+1]
      end
    else
      letter = letter.next
    end
  end
end

def fake_name(name)

  name.downcase!
  name = name.split(" ")
  name.reverse!

  last_name = name[0].split("")
  first_name = name[1].split("")

  swap_letters(last_name)
  swap_letters(first_name)



end

p fake_name("Felicia Torres")