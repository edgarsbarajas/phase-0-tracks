 # require gems
require 'sinatra'
require 'sqlite3'

db = SQLite3::Database.new("students.db")
db.results_as_hash = true

# write a basic GET route
# add a query parameter
# GET /
get '/' do
  "#{params[:name]} is #{params[:age]} years old."
end

# write a GET route with
# route parameters
get '/about/:person' do
  person = params[:person]
  "#{person} is a programmer, and #{person} is learning Sinatra."
end

get '/:person_1/loves/:person_2' do
  "#{params[:person_1]} loves #{params[:person_2]}"
end

# write a GET route that retrieves
# all student data
get '/students' do
  students = db.execute("SELECT * FROM students")
  response = ""
  students.each do |student|
    response << "ID: #{student['id']}<br>"
    response << "Name: #{student['name']}<br>"
    response << "Age: #{student['age']}<br>"
    response << "Campus: #{student['campus']}<br><br>"
  end
  response
end

# write a GET route that retrieves
# a particular student

get '/students/:id' do
  student = db.execute("SELECT * FROM students WHERE id=?", [params[:id]])[0]
  student.to_s
end

# write a /contact route that displays an address (you can make up the address).
get '/contact' do
  "633 Folson Street, San Francisco, CA"
end

# write a /great_job route that can take a person's name as a query parameter (not a route parameter) and say "Good job, [person's name]!". If the query parameter is not present, the route simply says "Good job!"
get '/great_job' do
  n = params[:name]
  if n
    "Good job, #{n}!"
  else
    "Good job!"
  end
end

# write route that uses route parameters to add two numbers and respond with the result.
get '/:num1/:num2' do
  num1 = params[:num1].to_i
  num2 = params[:num2].to_i

  "#{num1} + #{num2} = #{num1+num2}"
end

# a route that responds with a list of students from that campus
get '/students/at/:campus' do
  campus = params[:campus]

  students_at_campus = db.execute("SELECT * FROM students WHERE campus = ?", [campus])

  response = ""

  students_at_campus.each do |student|
    response << "ID: #{student['id']}<br>"
    response << "Name: #{student['name']}<br>"
    response << "Age: #{student['age']}<br>"
    response << "Campus: #{student['campus']}<br><br>"
  end

  response
end