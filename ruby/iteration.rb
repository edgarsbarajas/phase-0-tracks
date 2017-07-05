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