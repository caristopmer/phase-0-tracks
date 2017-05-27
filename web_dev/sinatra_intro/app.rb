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


# Release 0 #1
get '/contact' do
  "Dev Bootcamp<br>123 Fake St.<br>Chicago, IL 60657"
end

# Release 0 #2
get '/great_job' do
  if !params[:name]
    "Good job!"
  else
    "Good job, #{params[:name]}!"
  end
end

# Release 0 #3
get '/:num_1/plus/:num_2' do
  "#{params[:num_1]} plus #{params[:num_2]} is equal to #{params[:num_1].to_i + params[:num_2].to_i}."
end

# Release 0 #4
get '/students/younger_than/:age' do
  students = db.execute("SELECT * FROM students WHERE age < ?", [params[:age]])
  response = ""
  students.each do |student|
    response << "ID: #{student['id']}<br>"
    response << "Name: #{student['name']}<br>"
    response << "Age: #{student['age']}<br>"
    response << "Campus: #{student['campus']}<br><br>"
  end
  response
end