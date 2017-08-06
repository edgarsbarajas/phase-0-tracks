# require gems
require 'sinatra'
require 'sqlite3'

set :public_folder, File.dirname(__FILE__) + '/static'

db = SQLite3::Database.new("students.db")
db.results_as_hash = true

# show students on the home page
get '/' do
  @students = db.execute("SELECT * FROM students")
  erb :home
end

get '/students/new' do
  erb :new_student
end

# create new students via
# a form
post '/students' do
  db.execute("INSERT INTO students (name, campus, age) VALUES (?,?,?)", [params['name'], params['campus'], params['age'].to_i])
  redirect '/'
end

post "/student/update" do
  db.execute("UPDATE students SET campus=?, age=? WHERE name=?", [params['campus'], params['age'].to_i, params['name']])
  redirect '/'
end

get "/update_student" do
  erb :update_student
end

get "/campuses" do
  @campuses = db.execute("SELECT city FROM campuses")
  erb :campuses
end

post "/add_campus" do
  db.execute("INSERT INTO campuses (city) VALUES (?)", [params['city']])
  redirect '/campuses'
end

# add static resources