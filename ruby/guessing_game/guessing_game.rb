# Game class:
  # getter_methods: underscore array, secret word, guessed letters array
  # setter methods: guessed letters array, win?
  # Initialize:
  # 1 string attributes: 1 for secret word to be guessed(passed in)
  # 2 integer attributes: 1 for amount of guesses possible (double the amount of characters in the secret word), another for counting number of guesses taken, set to 0 (Repeated guesses do not count against the user.)
  # An array of underscores set to the length of the secret word, elements will be replaced as the user guesses correct letters
  # An array of guessed letters
  # win? boolean set to false
  # end initialize

#has_been_guessed? method (letter string)
  # iterate through guessed letters array
  # if found, return true
  # if not found, false
#end

# submit_letter method - takes in letter guessed
  # call has_been_guessed method using letter guessed
  # if letter has not been guessed,
    # push guess to guessed_letters array
    # iterate through secret word to check for letter guessed
      # if found, return true
      # call update_underscore_array method with guessed letters, and index of where to replace
  # if letter has been guessed
    #return false
# end

# update_underscore_array (takes in letter, and index to replace)
  # replace underscore array element using index with letter
#end
#end of game class

class Game
  attr_reader :underscore_array, :secret_word
  attr_accessor :guessed_letters, :win, :guesses_taken, :guesses_possible

  def initialize(secret_word)
    @secret_word = secret_word
    @guesses_possible = @secret_word.length * 2
    @guesses_taken = 1
    @underscore_array = ("_" * @secret_word.length).split("")
    @guessed_letters = []
    @win = false
  end

  def has_been_guessed?(guess)
    @guessed_letters.each do |letter|
      if letter == guess
        return true
      end
    end
    false
  end

  def update_underscore_array(letter, index)
    @underscore_array[index] = letter
    @underscore_array
  end

  def submit_guess(guess)
    if has_been_guessed?(guess)
      return false
    else
      @guessed_letters.push(guess)
      @guesses_taken += 1
      index = 0

      (secret_word.split("")).each do |letter|
        if letter == guess
          update_underscore_array(guess, index)
        end
        index += 1
      end
      return true
    end
  end
end

# --------- Driver

print "Player 1, enter a secret word: "
secret_word = gets.chomp

game = Game.new(secret_word)

system "clear"
puts "Player 2, start guessing the secret word!"

while game.guesses_possible >= game.guesses_taken
  puts "\nguess #{game.guesses_taken} / #{game.guesses_possible}"
  p game.underscore_array

  print "Take a guess: "
  guess = gets.chomp

  break if guess == "quit"

  if !game.submit_guess(guess)
    puts "#{guess} has already been entered!"
  end

  if game.secret_word.split("") == game.underscore_array then
    game.win = true
    break
  end
end

p game.underscore_array

if game.win
  puts "Congrats! You guessed the secret word!"
else
  puts "Boo! You lost!"
end