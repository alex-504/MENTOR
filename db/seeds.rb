# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Tag.destroy_all
Mentor.destroy_all
MentorTag.destroy_all
Consultation.destroy_all

puts "creating Users, Tags, Mentors, Mentor_Tags and Consultations"

users = []
10.times do
users << User.create!(
    name: Faker::Name.name,
    email: Faker::Internet.email,
    password: "password",
    role: Faker::Company.industry,
    linkedin_url: Faker::Internet.email,
  )
end

TAGS = [ "Facebook Marketing", "Web Development", "Financial advisor", "Information Security Analyst", "Software Developer", "Medical Technologist"]
tag_instances = []
TAGS.each do |tag|
  tag_instances << Tag.create!(
    name: tag
  )
end


mentors = [] 
10.times do
mentors << Mentor.create!(
  user: users.sample,
  description: "I am specializing in #{Faker::Job.field}",
  price: Faker::Number.decimal_part(digits: 4),
  availability: "available on weekends",
  title: Faker::Job.title,
)

MentorTag.create!(
  mentor: mentors.sample,
  tag: tag_instances.sample,
) 
end

10.times do
  Consultation.create!(
  user: users.sample,
  mentor: mentors.sample,
  details:"I am interested in learning #{Faker::Job.field} ",
  start_time: Faker::Time.forward(days: 5,  period: :evening, format: :long),
  duration: 60,  
)
end

puts "Created #{User.count} users, #{Tag.count} tags,#{Mentor.count} mentors, #{MentorTag.count} mentor tags,  and #{Consultation.count} consultations"



