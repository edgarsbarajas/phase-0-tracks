class Puppy
  def initialize
    puts "Initializing new puppy instance ..."
  end

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def speak(num)
    while num > 0
      puts "Woof!"
      num -= 1
    end
  end

  def roll_over
    puts "*rolls over*"
  end

  def dog_years(human_years)
    years = human_years * 7
    years
  end

  def sit
    puts "*sits*"
  end
end

class Car

  def initialize
    puts "Creating your car..."
  end

  def update_wheel_color(color)
    wheel_color = color
    puts "OK, your new wheels are #{wheel_color}"
    wheel_color
  end

  def go_top_speed
    top_speed = 200
    puts "Now going #{top_speed}mph"
    top_speed
  end
end

fido = Puppy.new

fido.fetch("ball")
fido.speak(5)
fido.roll_over
p fido.dog_years(6)
fido.sit

puts "\n"

mustang = Car.new
mustang.update_wheel_color("gold")
mustang.go_top_speed

# Use a loop to make 50 instances of your class.
# Modify your loop so that it stores all of the instances in a data structure.

counter = 0
new_cars = []

while counter < 50
  new_cars.push(Car.new)
  counter+=1
end

#Iterate over that data structure using .each and call the instance methods you wrote on each instance
new_cars.each do |car|
  car.go_top_speed
end