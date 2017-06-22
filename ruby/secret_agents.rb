=begin
  Encrypt method:
  Take in a string.
  Loop through string using an index.
  If char is a space, let it be.
  Otherwise for every index, asign itself with .next method.
=end

def encrypt(word)
  index = 0

  while word.length > index
    if word[index] == " "
      index+=1
    else
      word[index] = word[index].next
      index+=1
    end
  end

  puts word
end

=begin
  Decrypt method: Reverse the encryption.
  Takes in a word.
  Index through the word.
  If char is a space, leave it alone.
  Otherwise, revert to prev char.
=end

def decrypt(word)
  index = 0
  while word.length > index
    if word[index] == " "
      index += 1
    else
      word[index] = (word[index].ord-1).chr
      index += 1
    end
  end

  puts word
end

encrypt("word")
decrypt("xpse")
