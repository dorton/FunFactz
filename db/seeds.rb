# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Cohort.create([{ name: 'Front End', start_date: "2016-05-23" }, { name: 'Back End', start_date: "2016-05-23" }, { name: 'iOS', start_date: "2016-06-13" }])

Cohort.all.each do |cohort|
12.times do
  student = Student.new
  student.name = Faker::Name.name
  student.fun_fact = Faker::Hipster.sentences(1).join
  student.remote_profile_image_url = Faker::Avatar.image
  student.cohorts << cohort
  student.save
end
end
