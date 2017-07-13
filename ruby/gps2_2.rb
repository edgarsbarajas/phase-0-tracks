# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps:
  # split input string into array
  # push array elements into hash
  # set default quantity
  # print the list to the console [can you use one of your other methods here?]
# output: hash

# Method to add an item to a list
# input: list, item name, and optional quantity
# steps: push item name to list with quantity
# output: new list with updated item quantity

# Method to remove an item from the list
# input: list, item name to remove
# steps: delete item from list
# output: new list with item deleted

# Method to update the quantity of an item
# input: list, item, new quantity
# steps: set new quantity for item in list
# output: new list with updated quantity for item

# Method to print a list and make it look pretty
# input: our list with item names and quantities
# steps: print out a sentence for each item with its quantity
# output: list of sentences with item name and quantity

list = {}
groceries = "carrots apples cereal pizza"
def create_list(groceries, list)
  groceries.split(" ").each { |item| list[item] = 0 }
  list
end

def add_item(list, item, quantity= 0)
  list[item] = quantity
  list
end

def remove_item(list, item)
  list.delete(item)
  list
end

def update_quantity(list, item, quantity)
  add_item(list, item, quantity)
end

def print_list(list)
  list.each { |item, quantity| puts "There are #{quantity} #{item} on our list." }
end

p create_list(groceries, list)
p add_item(list, "banana", 3)
p remove_item(list, "banana")
p update_quantity(list, "apples", 16)
print_list(list)

# What did you learn about pseudocode from working on this challenge?
# I learned that pseudocode can save you lots of time. It gives a clear direction of which the program should go.

# What are the tradeoffs of using arrays and hashes for this challenge?
# The tradeoffs would be looping through them for almost everything but it keeps everything organized.

# What does a method return?
# A method returns whatever you want it to return. If you want it to return a list, implicitly have the list as the last line of the method before ending it.

# What kind of things can you pass into methods as arguments?
# You can pass whatever the method asks of you. Any object can be passed.

# How can you pass information between methods?
# You can pass information between methods by calling that other method or by using the class attributes

#What concepts were solidifed this challenge, and what concepts are still confusing?
# The DRY concept was really cleared up for me today. Also, the concept of method stacking was very helpful as well. No concepts really confuse me as of rightnow.

