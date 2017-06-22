current_year = 2017
result = ""
allergy = ""

puts "How many employees would you like to process?"
numb_of_employees = gets.chomp.to_i

until numb_of_employees == 0
  puts "What is your name?"
  name = gets.chomp

  puts "How old are you? What year were you born?"
  age = gets.chomp.to_i
  birth_year = gets.chomp.to_i

  puts "Our company cafeteria serves garlic bread. Should we order some for you?"
  garlic_bread = gets.chomp

  puts "Would you like to enroll in the company’s health insurance?"
  health_insurance = gets.chomp

  # naming allergies: stops when "done" is enetered. If "sunshine" is entered, result is "Probably a vampire"
  puts "Name your allergies: enter 'done' when finished"


  until allergy == "done" || allergy == "sunshine"
    allergy = gets.chomp
  end


  if allergy == "sunshine"
      result = "Probably a vampire"
  elsif (name == "Drake Cula" || name == "Tu Fang")
    result = "Definitely a vampire"
  elsif current_year - birth_year == age
    if (garlic_bread == "yes" || health_insurance == "yes")
      result = "Probably not a vampire."
    else
      result = "Results inconclusive."
    end
  else #when age does not match birth_year
    if (garlic_bread=="no" && health_insurance=="no")
      result = "Almost certainly a vampire"
    elsif (garlic_bread == "no" || health_insurance == "no")
      result = "Probably a vampire"
    else
      result = "Results inconclusive."
    end
  end

  puts "\nResult: #{result}"

  numb_of_employees -= 1 #subtracts one each loop
end #end of until loop

puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends"