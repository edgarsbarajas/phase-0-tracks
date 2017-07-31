require 'sqlite3'
require 'faker'

db = SQLite3::Database.new("calorie_counter.db")
db.results_as_hash = true

create_foods_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS foods(
    id INTEGER PRIMARY KEY,
    name VARCHAR(255),
    calories INT
  )
SQL

create_persons_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS persons(
    id INTEGER PRIMARY KEY,
    name VARCHAR(255),
    age INT,
    weight INT,
    height FLOAT(6),
    calorie_limit INT,
    calories_eaten INT,
    password VARCHAR(255),
    food_id INT,
    FOREIGN KEY(food_id) REFERENCES foods(id)

  )
SQL

db.execute(create_foods_table_cmd)
db.execute(create_persons_table_cmd)

# add 100 food items w/ calories to foods table
=begin
100.times do
 db.execute("INSERT INTO foods (name, calories) VALUES (?, ?)", [Faker::Food.dish, rand(1000)])
end
=end
## ----------------------------------------- ##

def get_account_info(db, name)
  account_info = db.execute("SELECT name, age, weight, height, calorie_limit, calories_eaten FROM persons WHERE name=?", [name])[0]

  account_info
end

def find_account(db, name)
  if get_account_info(db, name)
    return true
  else
    return false
  end
end

def get_password(db, name)
  db.execute("SELECT password FROM persons WHERE name=?", [name])[0]["password"]
end

def get_all_food(db)
  db.execute("SELECT * FROM foods")
end

def log_food(db, name, calories_in_food)
  db.execute("UPDATE persons SET calories_eaten=calories_eaten+? WHERE name=?", [calories_in_food, name])
end

def update_user_weight(db, name, weight)
  db.execute("UPDATE persons SET weight=? WHERE name=?", [weight, name])
end

puts "Do you have an account with us?"
answer = gets.chomp

if answer == "yes"
  account_member = true
elsif answer == "no"
  account_member = false
else
  puts "Invalid response."
end


if account_member
  puts "Ok. What is your name?"
  name = gets.chomp

  if find_account(db, name)
    puts "Your account was found!"

    print "Enter your password to continue: "
    account_password = gets.chomp

    if account_password == get_password(db, name)
      puts "Correct password..."

      menu_choice = ""

      while menu_choice != 0
        puts "\nWhat would you like to do?"
        puts "1. View Your Information"
        puts "2. Log Food Eaten"
        puts "3. Update Weight"
        puts "0. exit"

        menu_choice = gets.chomp.to_i

        case menu_choice
        when 0
          puts "Goodbye"
        when 1
          get_account_info(db, name).each do |key, value|
            puts "#{key}: #{value}"
          end
        when 2
          puts "All food:"
          get_all_food(db).each {|h| puts h}
          puts "What did you eat? Enter food item number:"
          food_eaten = gets.chomp.to_i

          calories_in_food = db.execute("SELECT calories FROM foods WHERE id=?", [food_eaten])[0]["calories"]

          log_food(db, name, calories_in_food)

          calories_left = get_account_info(db, name)["calorie_limit"] - get_account_info(db, name)["calories_eaten"]

          if calories_left < 0
            puts "You have gone over your daily calorie limit!"
          else
            puts "You could eat #{calories_left} more calories"
          end
        when 3
          print "Enter your new weight: "
          weight = gets.chomp.to_i

          update_user_weight(db, name, weight)
        else
          puts "Invalid choice."
        end
      end
    else
      puts "Incorrect password."
    end

  else
    puts "Account not found!"
  end
else
  puts "Would you like to create an account?"
  decision = gets.chomp

  if decision == "yes"
    create_account_decision = true
  elsif decision == "no"
    create_account_decision = false
  end

  if create_account_decision
    puts "Ok, create an account with us! We need the following information..."
    print "Name: "
    name = gets.chomp
    print "Age: "
    age = gets.chomp.to_i
    print "Current weight: "
    weight = gets.chomp.to_i
    print "Height (in inches): "
    height = gets.chomp.to_f
    print "Daily calorie goal: "
    calorie_limit = gets.chomp.to_i
    print "Password: "
    password = gets.chomp

    db.execute("INSERT INTO persons (name, age, weight, height, calorie_limit, calories_eaten, password) VALUES (?, ?, ?, ?, ?, 0, ?)", [name, age, weight, height, calorie_limit, password])
  else
    puts "OK, bye!"
  end
end