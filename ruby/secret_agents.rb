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
    if word[index] == "z"
      word[index] = "a"
      index+=1
    elsif word[index] == " "
      index+=1
    else
      word[index] = word[index].next
      index+=1
    end
  end

  word
end

=begin
  Decrypt method: Reverse the encryption.
  Takes in a word.
  Index through the word.
  If char is a space, leave it alone.
  Otherwise, revert to prev char.
=end

def decrypt(word)
  alphabet = "abcdefghijklmnopqrstuvwxyz"
  index = 0
  while word.length > index
    if word[index] == "a"
      word[index] = "z"
      index+=1
    elsif word[index] == " "
      index += 1
    else
      word[index] = alphabet[alphabet.index(word[index])-1]
      index += 1
    end
  end

  word
end

# driver code
p encrypt("abc")
p encrypt("zed")
p decrypt("bcd")
p decrypt("afe")
p decrypt(encrypt("swordfish")) #Encrypt method implicitly returns a modified "swordfish" string. The decrypt method modifies it back to normal, implicitly returning "swordfish"

