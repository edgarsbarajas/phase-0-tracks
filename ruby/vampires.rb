puts "What is your name?"
name = gets.chomp

puts "How old are you? What year were you born?"
age = gets.chomp.to_i
birth_year = gets.chomp.to_i

puts "Our company cafeteria serves garlic bread. Should we order some for you?"
garlic_bread = gets.chomp

puts "Would you like to enroll in the company’s health insurance?"
health_insurance = gets.chomp

current_year = 2017

if (name == "Drake Cula" || name == "Tu Fang")
  puts "Definitely a vampire"
elsif current_year - birth_year == age
  if (garlic_bread == "yes" || health_insurance == "yes")
    puts "Probably not a vampire."
  else
    puts "Results inconclusive."
  end
else #when age does not match birth_year
  if (garlic_bread=="no" && health_insurance=="no")
    puts "Almost certainly a vampire"
  elsif (garlic_bread == "no" || health_insurance == "no")
    puts "Probably a vampire"
  else
    puts "Results inconclusive."
  end
end