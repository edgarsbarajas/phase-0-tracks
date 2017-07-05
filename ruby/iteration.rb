def add_5 (name, start_num)
  5.times do
    yield(name, start_num)
    start_num+=1
  end

end

add_5("Edgar", 10) { |name, start_num| puts "#{name} is counting: #{start_num}" }

# declare an array and a hash, and populate each of them with some data
animals = ["Pig", "Gorilla", "Leopard", "Giraffe"]
guest_ages = {"Bob" => 30, "John" => 22, "Billy" => 29}

puts "\nOriginal array and hash:"
p animals
p guest_ages

# Demonstrate that you can iterate through each one using .each
puts "\niterate using .each:"
animals.each do |animal|
  puts "#{animal}"
end

print "\n"

guest_ages.each do |name, age|
  puts "#{name} is #{age} years old."
end

# using .map!
puts "\nIterate using .map!:"
animals.map! do |animal|
  animal = "chicken"
end

puts "after map: "
p animals

# Use the documentation to find other Array and Hash methods that take blocks, and that can accomplish the tasks below

numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
digit_words = { 1 => "one", 2=> "two", 3=> "three", 4=> "four", 5=> "five", 6 => "six"}
p numbers
p digit_words

#A method that iterates through the items, deleting any that meet a certain condition (for example, deleting any numbers that are less than 5).

numbers.delete_if do |x|
  x < 5
end

digit_words.delete_if do |key|
  key < 5
end

p numbers
p digit_words

#A method that filters a data structure for only items that do satisfy a certain condition (for example, keeping any numbers that are less than 5).

numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
digit_words = { 1 => "one", 2=> "two", 3=> "three", 4=> "four", 5=> "five", 6 => "six"}

numbers.keep_if { |x| x < 5 }
digit_words.keep_if { |key| key < 5 }

p numbers
p digit_words
