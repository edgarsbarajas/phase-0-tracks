class Puppy

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

fido = Puppy.new

fido.fetch("ball")
fido.speak(5)
fido.roll_over
p fido.dog_years(6)
fido.sit