# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require "open-uri"
Mentor.destroy_all
User.destroy_all
Tag.destroy_all

MentorTag.destroy_all
Consultation.destroy_all
ConsultationTag.destroy_all


puts "creating Users, Tags, Mentors, Mentor_Tags and Consultations"

# users = []
# 10.times do
# user =  User.create!(
#     name: Faker::Name.name,
#     email: Faker::Internet.email,
#     password: "password",
#     role: Faker::Company.industry,
#     linkedin_url: Faker::Internet.email,
#   )
#   file = URI.open('https://i.pravatar.cc/300')
#   user.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
#   users << user
# end

users = []
mentors = []


user = User.create!(
  name: "Alexandre Battiste Vieira",
  email: "alexandre.ealimentos@gmail.com",
  password: "password",
  role: "Founder of MentorHub and Moovers",
  linkedin_url: Faker::Internet.email,
)
file = URI.open('https://avatars1.githubusercontent.com/u/62379462?s=460&u=f10545a0baecb4a6f0f4709df0ec7b543bb64d35&v=4')
user.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
users << user

mentor = Mentor.create!(
  user: user,
  description: "I specialize in Full-Stack Web Development",
  price: Faker::Number.decimal_part(digits: 5),
  availability: ["weekdays", "weekends"].sample,
  title: "Founder of MentorHub and Moovers",
)
full_stack_tags = ["Full-Stack Development","Web Development"]
full_stack_tags.each do |name|
  tag = Tag.where(name: name).first_or_create
  MentorTag.create(
    mentor: mentor,
    tag: tag
  )
end
mentors << mentor


user = User.create!(
  name: "Aline Sakamoto Utiyama",
  email: "as.utiyama@gmail.com",
  password: "password",
  role:  "CEO, AMORA",
  linkedin_url: Faker::Internet.email,
)
file = URI.open('https://avatars1.githubusercontent.com/u/29885178?s=460&u=f669e929fc2a4853bc7dcd2de15cf03370608cda&v=4')
user.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
users << user

mentor = Mentor.create!(
  user: user,
  description: "I have been working with e-commerce for more than 5 years, starting from ¥200.000 up
  to ¥27.000.000 of revenue a year. I would be realy happy to share with you all the strategies you
  need to build a successful e-commerce company.",
  price: 5000,
  availability: ["weekdays", "weekends"].sample,
  title: "CEO, AMORA",
)
full_stack_tags = ["Shopify", "E-commerce", "Facebook Marketing", "Management"]
full_stack_tags.each do |name|
  tag = Tag.where(name: name).first_or_create
  MentorTag.create(
    mentor: mentor,
    tag: tag
  )

end

mentors << mentor

user = User.create!(
  name: "Sho Neriki",
  email: "ikirenohs@gmail.com",
  password: "password",
  role: "Founder of MentorHub and Moovers",
  linkedin_url: Faker::Internet.email,
)
file = URI.open('https://avatars2.githubusercontent.com/u/34837760?s=400&u=a0bb771119ebf84930f7effb715346d792c6ef6c&v=4')
user.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
users << user

mentor = Mentor.create!(
  user: user,
  description: "I specialize in Full-Stack Web Development",
  price: Faker::Number.decimal_part(digits: 5),
  availability: ["weekdays", "weekends"].sample,
  title: "Founder of MentorHub and Moovers",
)
full_stack_tags = ["Full-Stack Development","Web Development"]
full_stack_tags.each do |name|
  tag = Tag.where(name: name).first_or_create
  MentorTag.create(
    mentor: mentor,
    tag: tag
  )
end
mentors << mentor

user = User.create!(
  name: "John Katz",
  email: "John.Katz@gmail.com",
  password: "password",
  role: "Senior Front-End Web Developer",
  linkedin_url: Faker::Internet.email,
)
file = URI.open('https://i.pravatar.cc/150?img=33')
user.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
users << user

mentor = Mentor.create!(
  user: user,
  description: "I specialize in Front-End Web Development",
  price: Faker::Number.decimal_part(digits: 5),
  availability: ["weekdays", "weekends"].sample,
  title: "Founder of MentorHub and Moovers",
)
front_end_tags = ["Front-End Development","Web Development"]
front_end_tags.each do |name|
  tag = Tag.where(name: name).first_or_create
  MentorTag.create(
    mentor: mentor,
    tag: tag
  )
end
mentors << mentor

user = User.create!(
  name: "Ben Barlowe",
  email: "Benjamin.Barlowe@gmail.com",
  password: "password",
  role: "Junior Consultant at PQE",
  linkedin_url: Faker::Internet.email,
)
file = URI.open('https://i.pravatar.cc/150?img=61')
user.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
users << user

mentor = Mentor.create!(
  user: user,
  description: "I have worked at PQE for 5 years now",
  price: Faker::Number.decimal_part(digits: 5),
  availability: ["weekdays", "weekends"].sample,
  title: "Junior Consultant at PQE",
)
consulting_tags = ["Consulting", "Marketing"]
consulting_tags.each do |name|
  tag = Tag.where(name: name).first_or_create
  MentorTag.create(
    mentor: mentor,
    tag: tag
  )
end
mentors << mentor




user = User.create!(
  name: "Dylan Caddle",
  email: "dylan.caddle@gmail.com",
  password: "password",
  role: "Junior Accountant at Nokia",
  linkedin_url: Faker::Internet.email,
)
file = URI.open('https://i.pravatar.cc/150?img=60')
user.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
users << user

mentor = Mentor.create!(
  user: user,
  description: "I have worked at Nokia for 3 years now",
  price: Faker::Number.decimal_part(digits: 5),
  availability: ["weekdays", "weekends"].sample,
  title: "Junior Accountant at Nokia",
)
accounting_tags = ["Accounting", "Communications"]
accounting_tags.each do |name|
  tag = Tag.where(name: name).first_or_create
  MentorTag.create(
    mentor: mentor,
    tag: tag
  )
end
mentors << mentor





user = User.create!(
  name: "Bea Hale",
  email: "beatrice.hale@gmail.com",
  password: "password",
  role: "Customer Care Specialist at Google",
  linkedin_url: Faker::Internet.email,
)
file = URI.open('https://i.pravatar.cc/150?img=49')
user.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
users << user

mentor = Mentor.create!(
  user: user,
  description: "I have been a customer care specialist at google for 6 years",
  price: Faker::Number.decimal_part(digits: 5),
  availability: ["weekdays", "weekends"].sample,
  title: "Customer Care Specialist at Google",
)
customer_care_tags = ["Customer Care", "Data Science", "Sales", "Accounting"]
customer_care_tags.each do |name|
  tag = Tag.where(name: name).first_or_create
  MentorTag.create(
    mentor: mentor,
    tag: tag
  )
end
mentors << mentor


user = User.create!(
  name: "Caroline Whitlock",
  email: "caroline.whitlock@gmail.com",
  password: "password",
  role: "Junior Administrative Support Coordinator at Salesforce",
  linkedin_url: Faker::Internet.email,
)
file = URI.open('https://i.pravatar.cc/150?img=48')
user.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
users << user

mentor = Mentor.create!(
  user: user,
  description: "I have been at Salesforce as a Junior Administrative Support Coordinator for 3 years",
  price: Faker::Number.decimal_part(digits: 5),
  availability: ["weekdays", "weekends"].sample,
  title: "Junior Administrative Support Coordinator at Salesforce",
)
administration_tags = ["Administration", "Sales","Software Development", "IT"]
administration_tags.each do |name|
  tag = Tag.where(name: name).first_or_create
  MentorTag.create(
    mentor: mentor,
    tag: tag
  )
end
mentors << mentor

user = User.create!(
  name: "Audrey Trevino",
  email: "audrey.trevino@gmail.com",
  password: "password",
  role: "Full Stack Developer at Atlantic Bay Morgage Group",
  linkedin_url: Faker::Internet.email,
)
file = URI.open('https://i.pravatar.cc/150?img=47')
user.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
users << user

mentor = Mentor.create!(
  user: user,
  description: "I have been at Atlantic Bay Morgage Group as a full stack dev for 3 years",
  price: Faker::Number.decimal_part(digits: 5),
  availability: ["weekdays", "weekends"].sample,
  title: "Full Stack Developer at Atlantic Bay Morgage Grou",
)
full_stack_tags = ["Full-Stack Developer", "Law", "Data Science"]
full_stack_tags.each do |name|
  tag = Tag.where(name: name).first_or_create
  MentorTag.create(
    mentor: mentor,
    tag: tag
  )
end
mentors << mentor


user = User.create!(
  name: "Katherine Langston",
  email: "katherine.langston@gmail.com",
  password: "password",
  role: 'Head Manager at Weber Shandwick',
  linkedin_url: Faker::Internet.email,
)
file = URI.open('https://i.pravatar.cc/150?img=45')
user.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
users << user

mentor = Mentor.create!(
  user: user,
  description: "I have been head manager at Weber Shandwick for 3 years",
  price: Faker::Number.decimal_part(digits: 5),
  availability: ["weekdays", "weekends"].sample,
  title: "Head of Management at Weber Shandwick",
)
management_tags = ["Management", "Startups", "Education", "Marketing"]
management_tags.each do |name|
  tag = Tag.where(name: name).first_or_create
  MentorTag.create(
    mentor: mentor,
    tag: tag
  )
end
mentors << mentor

# user = User.create!(
#   name: "Aline Sakamoto Utiyama",
#   email: "as.utiyama@gmail.com",
#   password: "password",
#   role:  "Founder of MentorHub and Moovers",
#   linkedin_url: Faker::Internet.email,
# )
# file = URI.open('https://avatars1.githubusercontent.com/u/29885178?s=460&u=f669e929fc2a4853bc7dcd2de15cf03370608cda&v=4')
# user.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
# users << user

# mentor = Mentor.create!(
#   user: user,
#   description: "I specialize in Full-Stack Web Development",
#   price: Faker::Number.decimal_part(digits: 5),
#   availability: ["weekdays", "weekends"].sample,
#   title: "Founder of MentorHub and Moovers",
# )
# full_stack_tags = ["Full-Stack Development","Web Development"]
# full_stack_tags.each do |name|
#   tag = Tag.where(name: name).first_or_create
#   MentorTag.create(
#     mentor: mentor,
#     tag: tag
#     )
# end
# mentors << mentor


# TAGS = [ "Marketing", "Business", "Management", "Communications", "Engineering", "Education", "Government", "Law", "Web Development", "Data Science", "Software Development", "IT", "Healthcare", "Startups", "Sales", "Accounting"]


# tag_instances = []
# TAGS.each do |tag|
#   tag_instances << Tag.create!(
#     name: tag
#   )
# end

# mentors = []
# # how we created seeds with mentors before below
# users.each do |user|
#   mentor = Mentor.create!(
#     user: user,
#     description: "I am specializing in #{Faker::Job.field.downcase}",
#     price: Faker::Number.decimal_part(digits: 5),
#     availability: "available on weekends",
#     title: Faker::Job.title,
#   )
#   mentors << mentor
#   mentor_tags = tag_instances.sample(2)
#   mentor_tags.each do |mentor_tag|
#     MentorTag.create(
#       mentor: mentor,
#       tag: mentor_tag
#       )
#     end
# end


# users << User.create!(
#   name: "John",
#   email: "John.Katz@gmail.com",
#   password: "password",
#   role: "Senior Front End Web Developer",
#   linkedin_url: Faker::Internet.email,
# )
# file = URI.open('https://i.pravatar.cc/150?img=33')
# user.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
# users << user



# mentor[0] = Mentor.create!(
#   user: users[3],
#   description: "I specialize in Front-end Web Development"
#   price: Faker::Number.decimal_part(digits: 5),
#   availability: "available",
#   title: "Front-End Web Developer at Cisco ",
# )
# mentor_tags = tag_instances
# # mentor_tags.each do |mentor_tag|
#   MentorTag.create(
#     mentor: mentor[0],
#     tag: mentor_tag
#     )
#   # end



#   Mentor.create!(
#     user: users[7],
#     description: "I am specializing in Sales Support.",
#     price: Faker::Number.decimal_part(digits: 5),
#     availability: "available every weekday after 5pm",
#     title: "Market Research at Amazon",
#   )
#   mentor_tags = tag_instances
#   mentor_tags.each do |mentor_tag|
#     MentorTag.create(
#       mentor: mentor,
#       tag: mentor_tag
#       )
#     end

#     Mentor.create!(
#       user: users[8],
#       description: "I am specializing in Financial Advising",
#       price: Faker::Number.decimal_part(digits: 5),
#       availability: "available every weekday after 5pm",
#       title: Faker::Job.title,
#     )
#     mentor_tags = tag_instances
#     mentor_tags.each do |mentor_tag|
#       MentorTag.create(
#         mentor: mentor,
#         tag: mentor_tag
#         )
#       end

#       Mentor.create!(
#         user: users[9],
#         description: "I am specializing in Facebook Marketing",
#         price: Faker::Number.decimal_part(digits: 5),
#         availability: "available every weekday after 5pm",
#         title: Faker::Job.title,
#       )
#       mentor_tags = tag_instances
#       mentor_tags.each do |mentor_tag|
#         MentorTag.create(
#           mentor: mentor,
#           tag: mentor_tag
#           )
#         end




# DURATION = [30, 60, 90]
# 10.times do
#   consultation = Consultation.create!(
#   user: users.sample,
#   mentor: Mentor.all.sample,
#   details:"I am interested in learning #{Faker::Job.field.downcase} ",
#   start_time: Faker::Time.forward(days: 5,  period: :evening, format: :long),
#   duration: DURATION.sample,
# )
#   tag_instances.sample(2).each do |tag|
#     ConsultationTag.create!(
#       consultation: consultation,
#       tag: tag
#     )
#   end
# end




puts "Created #{User.count} users, #{Tag.count} tags,#{Mentor.count} mentors, #{MentorTag.count} mentor tags, #{ConsultationTag.count} consultation tags  and #{Consultation.count} consultations"
