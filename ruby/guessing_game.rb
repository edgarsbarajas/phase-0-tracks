# Game class:
  # getter_methods: underscore array, set word, guessed letters array
  # setter methods: guessed letters array, win?
  # Initialize:
  # 2 string attributes: 1 for setting word to be guessed(passed in), and another for the other using to enter guesses(set to empty)
  # 2 integer attributes: 1 for amount of guesses possible (double the amount of characters in the set word), another for counting number of guesses taken, set to 0 (Repeated guesses do not count against the user.)
  # An array of underscores set to the length of the set word, elements will be replaced as the user guesses correct letters
  # An array of guessed letters
  # win? boolean set to false
  # end initialize

# check_letter method - takes in letter guessed
  # if guessed letter is not in array of guessed letters
    # iterate through set word to check for letter guessed
      # if found, return true
      # call update_underscore_array method with guessed letters, and index of where to replace
  # if letter is found in array of guessed letters
    #return false
# end

# update_underscore_array (takes in letter, and index to replace)
  # replace underscore array element using index with letter
#end
#end of game class







