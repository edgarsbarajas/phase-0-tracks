class Santa
  def initialize(gender, ethnicity)
    @gender = gender
    @ethnicity = ethnicity
    @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
    @age = 0
    puts "Initializing Santa instance..."
  end

  def speak
    puts "Ho, ho ,ho!, Haaaaaappy holidays!"
  end

  def eat_milk_and_cookies(type_of_cookie)
    puts "That was a good #{type_of_cookie}"
  end

  def about
    puts "Santa is a #{@ethnicity} #{@gender}"
  end
end

Bob = Santa.new("Male", "Mexican")
Bob.speak
Bob.eat_milk_and_cookies("snickerdoodle")
Bob.about

example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
santas = []

example_genders.length.times do |i|
  santas << Santa.new(example_genders[i], example_ethnicities[i])
  santas[i].about
end



