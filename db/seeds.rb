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

users << User.create!(
    name: "Alex",
    email: "alexandre.ealimentos@gmail.com",
    password: "password",
    role: Faker::Company.industry,
    linkedin_url: Faker::Internet.email,
  )

users << User.create!(
    name: "Aline",
    email: "as.utiyama@gmail.com",
    password: "password",
    role: Faker::Company.industry,
    linkedin_url: Faker::Internet.email,
  )

users << User.create!(
    name: "Sho",
    email: "ikirenohs@gmail.com",
    password: "password",
    role: Faker::Company.industry,
    linkedin_url: Faker::Internet.email,
  )

TAGS = [ "Facebook Marketing", "Web Development", "Financial advisor", "Information Security Analyst", "Software Developer", "Medical Technologist", "Human Resources"]
tag_instances = []
TAGS.each do |tag|
  tag_instances << Tag.create!(
    name: tag
  )
end


10.times do
  mentor = Mentor.create!(
    user: users.sample,
    description: "I am specializing in #{Faker::Job.field.downcase}",
    price: Faker::Number.decimal_part(digits: 5),
    availability: "available on weekends",
    title: Faker::Job.title,
  )
  mentor_tags = tag_instances.sample(3)
  mentor_tags.each do |mentor_tag|
    MentorTag.create(
      mentor: mentor,
      tag: mentor_tag
      )  
    end
end




DURATION = [30, 60, 90]
10.times do
  Consultation.create!(
  user: users.sample,
  mentor: Mentor.all.sample,
  details:"I am interested in learning #{Faker::Job.field.downcase} ",
  start_time: Faker::Time.forward(days: 5,  period: :evening, format: :long),
  duration: DURATION.sample,
)
end

puts "Created #{User.count} users, #{Tag.count} tags,#{Mentor.count} mentors, #{MentorTag.count} mentor tags,  and #{Consultation.count} consultations"



