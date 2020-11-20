# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require "open-uri"

User.destroy_all
Tag.destroy_all
Mentor.destroy_all
MentorTag.destroy_all
Consultation.destroy_all
ConsultationTag.destroy_all

# def seed_image(file_name)
#   File.open(File.join(Rails.root, "/app/assets/images/seed/#{file_name}.jpg"))
# end



puts "creating Users, Tags, Mentors, Mentor_Tags and Consultations"

users = []
10.times do
user =  User.create!(
    name: Faker::Name.name,
    email: Faker::Internet.email,
    password: "password",
    role: Faker::Company.industry,
    linkedin_url: Faker::Internet.email,
    
    # avatar_images = Unsplash::Photo.search('architecture', 1, 25)

    #   unsplash_images.each do |unsplash_image|
    #     image = Properties::Image.create!(
    #       property: property,
    #       category: Properties::Image.categories.keys.sample,
    #       taken_on: rand(5..200).days.ago,
    #       title: unsplash_image.description,
    #       file_remote_url: unsplash_image.urls.regular
    #     )
    #     Properties::Images::Publisher.(image)
    #   end
  )
  file = URI.open('https://i.pravatar.cc/300')
  user.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
  users << user 
end

# user = User.create!(
#     name: "Alex",
#     email: "alexandre.ealimentos@gmail.com",
#     password: "password",
#     role: Faker::Company.industry,
#     linkedin_url: Faker::Internet.email,   
#   )
#   file = URI.open('https://i.pravatar.cc/300')
#   user.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
#   users << user 

# user = User.create!(
#     name: "Aline",
#     email: "as.utiyama@gmail.com",
#     password: "password",
#     role: Faker::Company.industry,
#     linkedin_url: Faker::Internet.email,
#   )

# user = User.create!(
#     name: "Sho",
#     email: "ikirenohs@gmail.com",
#     password: "password",
#     role: Faker::Company.industry,
#     linkedin_url: Faker::Internet.email,
#   )

user = User.create!(
  name: "Alexandre",
  email: "alexandre.ealimentos@gmail.com",
  password: "password",
  role: "Founder of MentorHub and Moovers",
  linkedin_url: Faker::Internet.email,   
)
file = URI.open('https://avatars1.githubusercontent.com/u/62379462?s=460&u=f10545a0baecb4a6f0f4709df0ec7b543bb64d35&v=4')
user.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
users << user

user = User.create!(
  name: "Aline",
  email: "as.utiyama@gmail.com",
  password: "password",
  role:  "Founder of MentorHub and Moovers",
  linkedin_url: Faker::Internet.email,   
)
file = URI.open('https://avatars1.githubusercontent.com/u/29885178?s=460&u=f669e929fc2a4853bc7dcd2de15cf03370608cda&v=4')
user.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
users << user 

user = User.create!(
  name: "Sho",
  email: "ikirenohs@gmail.com",
  password: "password",
  role: "Founder of MentorHub and Moovers",
  linkedin_url: Faker::Internet.email,   
)
file = URI.open('https://avatars2.githubusercontent.com/u/34837760?s=400&u=a0bb771119ebf84930f7effb715346d792c6ef6c&v=4')
user.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
users << user 

# users << User.create!(
#   name: "John",
#   email: "John.Katz@gmail.com",
#   password: "password",
#   role: "Senior Front End  Web Developer",
#   linkedin_url: Faker::Internet.email,   
# )
# file = URI.open('https://i.pravatar.cc/150?img=33')
# user.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
# users << user 

# users << User.create!(
#   name: "Ben",
#   email: "Benjamin.Barlowe@gmail.com",
#   password: "password",
#   role: "Junior Consultant at PQE",
#   linkedin_url: Faker::Internet.email,   
# )
# file = URI.open('https://i.pravatar.cc/150?img=61')
# user.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
# users << user 

# users << User.create!(
#   name: "Dylan",
#   email: "dylan.caddle@gmail.com",
#   password: "password",
#   role: "Junior Accountant at Nokia",
#   linkedin_url: Faker::Internet.email,   
# )
# file = URI.open('https://i.pravatar.cc/150?img=60')
# user.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
# users << user 





# users << User.create!(
#   name: "Bea",
#   email: "beatrice.hale@gmail.com",
#   password: "password",
#   role: "Customer Care Specialist at Google",
#   linkedin_url: Faker::Internet.email,   
# )
# file = URI.open('https://i.pravatar.cc/150?img=49')
# user.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
# users << user 

# users << User.create!(
#   name: "Caroline",
#   email: "caroline.whitlock@gmail.com",
#   password: "password",
#   role: "Junior Administrative Support Coordinator at Salesforce",
#   linkedin_url: Faker::Internet.email,   
# )
# file = URI.open('https://i.pravatar.cc/150?img=48')
# user.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
# users << User.create!(
#   name: "Audrey",
#   email: "audrey.trevino@gmail.com",
#   password: "password",
#   role: "Full Stack Developer at Atlantic Bay Morgage Group",
#   linkedin_url: Faker::Internet.email,   
# )
# file = URI.open('https://i.pravatar.cc/150?img=47')
# user.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
# users << user 


# users << User.create!(
#   name: "Katherine",
#   email: "katherine.langston@gmail.com",
#   password: "password",
#   role: 'Junior Analyst at Weber Shandwick',
#   linkedin_url: Faker::Internet.email,   
# )
# file = URI.open('https://i.pravatar.cc/150?img=45')
# user.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
# users << user 


TAGS = [ "Marketing", "Web Development", "Data Science", "Software Development", "Healthcare", "Startups", "Sales", "Accounting", "Marketing"]

#  Marketing business, management, IT, , Engineering
tag_instances = []
TAGS.each do |tag|
  tag_instances << Tag.create!(
    name: tag
  )
end




mentors = []
# how we created seeds with mentors before below
users.each do |user|
  mentor = Mentor.create!(
    user: user,
    description: "I am specializing in #{Faker::Job.field.downcase}",
    price: Faker::Number.decimal_part(digits: 5),
    availability: "available on weekends",
    title: Faker::Job.title,
  )
  mentors << mentor
  mentor_tags = tag_instances.sample(2)
  mentor_tags.each do |mentor_tag|
    MentorTag.create(
      mentor: mentor,
      tag: mentor_tag
      )  
    end
end

# Mentor.create!(
#   user: users[3],
#   description: "I specialize in Front End Web Development",
#   price: Faker::Number.decimal_part(digits: 5),
#   availability: "",
#   title: "Senior Front Web Developer at Crowd Cast",
# )
# mentor_tags = tag_instances
# mentor_tags.each do |mentor_tag|
#   MentorTag.create(
#     mentor: mentor,
#     tag: mentor_tag
#     )  
#   end
  
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




DURATION = [30, 60, 90]
10.times do
  consultation = Consultation.create!(
  user: users.sample,
  mentor: Mentor.all.sample,
  details:"I am interested in learning #{Faker::Job.field.downcase} ",
  start_time: Faker::Time.forward(days: 5,  period: :evening, format: :long),
  duration: DURATION.sample,
)
  tag_instances.sample(2).each do |tag|
    ConsultationTag.create!(
      consultation: consultation,
      tag: tag  
    )
  end
end




puts "Created #{User.count} users, #{Tag.count} tags,#{Mentor.count} mentors, #{MentorTag.count} mentor tags, #{ConsultationTag.count} consultation tags  and #{Consultation.count} consultations"



