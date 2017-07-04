#Pseudocode#
#Prompt the designer/user for all of this information.
#Convert any user input to the appropriate data type.
#Print the hash back out to the screen when the designer has answered all of the questions.

client = {
  name: "",
  age: 0,
  number_of_children: 0,
  decor_theme: ""
}

# Used print instead of puts so input would be on same line as label
print "Name: "
client[:name] = gets.chomp

print "Age: "
client[:age] = gets.chomp.to_i

print "Number of children: "
client[:number_of_children] = gets.chomp.to_i

print "Decor theme: "
client[:decor_theme] = gets.chomp

puts "\nCLIENT INFORMATION"
puts "Name: #{client[:name]}"
puts "Age: #{client[:age]}"
puts "Number of children: #{client[:number_of_children]}"
puts "Decor theme: #{client[:decor_theme]}"

puts "\nEnter key to update or 'none' to continue."
key_name = gets.chomp

case key_name
when "name"
  print "Enter updated client name: "
  client[key_name.to_sym] = gets.chomp
when "age"
  print "Enter updated client age: "
  client[key_name.to_sym] = gets.chomp.to_i
when "number_of_children"
  print "Enter updated client child count: "
  client[key_name.to_sym] = gets.chomp.to_i
when "decor_theme"
  print "Enter updated client decor theme: "
  client[key_name.to_sym] = gets.chomp
when "none"
  puts "No updates."
end

puts "\nCLIENT INFORMATION"
puts "Name: #{client[:name]}"
puts "Age: #{client[:age]}"
puts "Number of children: #{client[:number_of_children]}"
puts "Decor theme: #{client[:decor_theme]}"