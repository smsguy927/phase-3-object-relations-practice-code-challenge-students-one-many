puts "Clearing old data..."
Cohort.destroy_all
Student.destroy_all

# This will create 5 cohorts using a random date
puts "Seeding cohorts..."
c1 = Cohort.create(
  id: 1,
  name: "nyc-dumbo-web-#{Faker::Date.forward(days: 1).strftime("%m%d%Y")}",
  current_mod: rand(1..5)
)
c2 = Cohort.create(
  id: 2,
  name: "nyc-dumbo-web-#{Faker::Date.forward(days: 1).strftime("%m%d%Y")}",
  current_mod: rand(1..5)
)
c3 = Cohort.create(
  id: 3,
  name: "nyc-dumbo-web-#{Faker::Date.forward(days: 1).strftime("%m%d%Y")}",
  current_mod: rand(1..5)
)
c4 = Cohort.create(
  id: 4,
  name: "nyc-dumbo-web-#{Faker::Date.forward(days: 1).strftime("%m%d%Y")}",
  current_mod: rand(1..5)
)
c5 = Cohort.create(
  id: 5,
  name: "nyc-dumbo-web-#{Faker::Date.forward(days: 1).strftime("%m%d%Y")}",
  current_mod: rand(1..5)
)

puts "Seeding students..."
# TODO: create seed data for students
# check your schema and make sure to create students with all the necessary data
25.times do
  Student.create(name: Faker::Name.name, age: rand(18..60), cohort_id: rand(1..5))
end
25.times do
  Student.create(name: Faker::Name.name, age: rand(18..60))
end

puts "Done!"