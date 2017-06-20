puts "What is that hamster's name?"
hamster_name = gets.chomp

stay = false

until stay
  puts "Volume level from 1-10?"
  vol_level = gets.chomp.to_i

  if vol_level > 0 && vol_level < 11
    stay = true
  else
    puts "Outside of range!"
  end
end

puts "What is the fur color?"
fur_color = gets.chomp

puts "Good candidate for adoption?"
good_for_adopt = gets.chomp

puts "Estimated age?"
est_age = gets.chomp.to_i

puts "Latest Hanster Entry: "
puts "Name: #{hamster_name}"
puts "Volume level: #{vol_level}"
puts "Fur color: #{fur_color}"
puts "Good for adoption? #{good_for_adopt}"
puts "Estimated age: #{est_age}"



