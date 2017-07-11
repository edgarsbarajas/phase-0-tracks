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

  def celebrate_birthday
    @age += 1
  end

  def get_mad_at(name)
    @reindeer_ranking.insert(-1, @reindeer_ranking.delete_at(@reindeer_ranking.index(name)))
  end

  #setters
  def gender= (new_gender)
    @gender = new_gender
  end

  # getters
  def age
    @age
  end

  def ethnicity
    @ethnicity
  end

  def reindeer_ranking
    @reindeer_ranking
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

#--------

reindeer = Santa.new("Female", "Do-Do")

p reindeer.age
reindeer.celebrate_birthday
p reindeer.age

p reindeer.reindeer_ranking
reindeer.get_mad_at("Vixen")
p reindeer.reindeer_ranking

p reindeer.ethnicity

p reindeer.gender=("BOOOO")

reindeer.about




