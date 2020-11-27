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
Review.destroy_all

MentorTag.destroy_all
Consultation.destroy_all
ConsultationTag.destroy_all


puts "creating Users, Tags, Mentors, Mentor_Tags, Reviews and Consultations"

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
  role: "Founder of Moovers",
  linkedin_url: "linkedin.com/in/alexandre-vieira-50046425",
)
file = URI.open('https://avatars1.githubusercontent.com/u/62379462?s=460&u=f10545a0baecb4a6f0f4709df0ec7b543bb64d35&v=4')
user.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
users << user

# mentor = Mentor.create!(
#   user: user,
#   description: "I specialize in Full-Stack Web Development",
#   price: Faker::Number.decimal_part(digits: 5),
#   availability: ["weekdays", "weekends"].sample,
#   title: "Founder of MentorHub",
# )
# full_stack_tags = ["Full-Stack Development","Web Development"]
# full_stack_tags.each do |name|
#   tag = Tag.where(name: name).first_or_create
#   MentorTag.create(
#     mentor: mentor,
#     tag: tag
#   )
# end
# mentors << mentor


user = User.create!(
  name: "Sho Neriki",
  email: "ikirenohs@gmail.com",
  password: "password",
  role: "Founder at JapanEntrepreneurs",
  linkedin_url: "linkedin.com/in/sho-neriki-560ba723",
)
file = URI.open('https://avatars2.githubusercontent.com/u/34837760?s=400&u=a0bb771119ebf84930f7effb715346d792c6ef6c&v=4')
user.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
users << user

mentor = Mentor.create!(
  user: user,
  description: "As a founder at JapanEntrepreneurs, I had to make a lot of decisions, daily. This became exhausting, especially if I had multiple ideas on how to do something, but wasn't sure what to choose. Moments like these have inspired me to help people in similar situations. Does this resonate with you? If so, I'd love to help you.",
  price: 5000,
  availability: "Varied Availability",
  title: "Founder at JapanEntrepreneurs",
)
full_stack_tags = ["Consulting", "Sales", "Startups", "Management"]
full_stack_tags.each do |name|
  tag = Tag.where(name: name).first_or_create
  MentorTag.create(
    mentor: mentor,
    tag: tag
  )
end
mentors << mentor

user = User.create!(
  name: "Yann Klein",
  email: "yann.klein@me.com",
  password: "password",
  role: "Coding Bootcamp Manager at LeWagon Tokyo",
  linkedin_url: "https://www.linkedin.com/in/yann-klein/",
)
file = URI.open('https://avatars2.githubusercontent.com/u/26819547?s=460&u=ae79d8825ad1127723641cbf32a9a7e2ec221e7f&v=4')
user.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
users << user

mentor = Mentor.create!(
  user: user,
  description: "Curiosity, creativity and people empowerment are the 3 things I value the most.
  I combined them to develop embedded systems in Asia, to lead software projects and innovation for a global company and to develop a VR startup in Canada.
  I use the best of these values today to help people reach their dream future at Le Wagon Tokyo. ",
  price: 5000,
  availability: "Sundays",
  title: "Coding Bootcamp Manager at LeWagon Tokyo",
)
front_end_tags = ["Full-Stack Web Development", "Software Engineer"]
front_end_tags.each do |name|
  tag = Tag.where(name: name).first_or_create
  MentorTag.create(
    mentor: mentor,
    tag: tag
  )
end
10.times do
  review = Review.create!(
    content:"I had a fantastic session. Thank you so much",
    rating: 5,
    mentor: mentor,
    user: User.all.where(user != mentor.user).sample
    )
  mentors << mentor
  end


user = User.create!(
  name: "Doug Berkley",
  email: "douglas.berkley@yahoo.com",
  password: "password",
  role: "Co-Driver at Le Wagon Japan",
  linkedin_url: "linkedin.com/in/dougberkley",
)
file = URI.open('https://avatars1.githubusercontent.com/u/25542223?s=460&u=503c4cf07a740eb09815bd9a5cbb0fbb36a3e79f&v=4')
user.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
users << user

mentor = Mentor.create!(
  user: user,
  description: "I’m a web developer and director at Le Wagon Japan. We run full-time and part-time courses for Web Development and Data Science. I am a graduate of the program myself and have been building ever since.",
  price: 5000,
  availability: "Sundays",
  title: "Co-Driver at Le Wagon Japan",
)
consulting_tags = ["Full-Stack Web Development", "Business Development"]
consulting_tags.each do |name|
  tag = Tag.where(name: name).first_or_create
  MentorTag.create(
    mentor: mentor,
    tag: tag
  )
end
10.times do
  review = Review.create!(
    content:"I had a fantastic session. Thank you so much",
    rating: 5,
    mentor: mentor,
    user: User.all.where(user != mentor.user).sample
    )
  mentors << mentor
  end




user = User.create!(
  name: "Sylvain Pierre",
  email: "sylvain.pierre@centraliens-nantes.net",
  password: "password",
  role: "Driver Le Wagon Japan",
  linkedin_url: "linkedin.com/in/sylvainpierre",
)
file = URI.open('https://media-exp1.licdn.com/dms/image/C4D03AQGDDtmc8EktDw/profile-displayphoto-shrink_800_800/0/1604650765591?e=1611792000&v=beta&t=8WDIluGG7_rjEJTZuM1a68FnsyajRp5fF8p3n5NfSfs')
user.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
users << user

mentor = Mentor.create!(
  user: user,
  description: "I left France for Vietnam in 2006 to co-found Officience, a French BPO company, with two other associates, where I developed extensive experience with international customers and local BPO market. After growing the company to 300 people, we decided to change our management model in 2014 to embrace a flatter and more open structure, a move about which I gave a TED talk in 2015 in Paris.
  In 2016, I moved to Japan to launch Le Wagon's Tokyo franchise. Le Wagon is a coding bootcamp for entrepreneur and creative people. In only 4 years, we grew our local community to over 4,000 members, expanded to Kyoto in October 2018, launched a new Data Science program, and have trained 300 aspiring developers and entrepreneurs.",
  price: 5000,
  availability: "Sundays",
  title: "Driver Le Wagon Japan",
)
accounting_tags = ["Entrepreneurship", "Public Speaking", "Startups"]
accounting_tags.each do |name|
  tag = Tag.where(name: name).first_or_create
  MentorTag.create(
    mentor: mentor,
    tag: tag
  )
end
10.times do
review = Review.create!(
  content:"I had a fantastic session. Thank you so much",
  rating: 5,
  mentor: mentor,
  user: User.all.where(user != mentor.user).sample
  )
mentors << mentor
end

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
  description: "I have been working with an e-commerce for more than 5 years, starting from ¥200,000 up
  to ¥27,000,000 of revenue a year. I would be very happy to share all the strategies you
  need to build a successful e-commerce company.",
  price: 3500,
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
  name: "Trouni Tiet",
  email: "trouni.tiet@yahoo.com",
  password: "password",
  role: "Entrepreneur, Machine Learning Instructor, Full-Stack Developer",
  linkedin_url: "linkedin.com/in/trouni",
)
file = URI.open('https://avatars1.githubusercontent.com/u/34345789?s=460&v=4')
user.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
users << user

mentor = Mentor.create!(
  user: user,
  description: "5 years global experience leading and growing tech startups, implementing scalable business operations, digital process automation, as well as building digital products as a full-stack developer. My business experience paired with my solid engineering background allows me to navigate complex, multifaceted issues involving all aspects of a business.

  I am passionate about business automation, AI, machine learning & deep learning, and my current objectives revolve around creating impactful (B2B) applications. I am currently open to offers in the field of Data Science. ",
  price: 5000,
  availability: ["weekdays", "weekends"].sample,
  title: "Entrepreneur, Machine Learning Instructor, Full Stack Developer.",
)
customer_care_tags = ["Machine Learning", "Data Science", "Full-Stack Web Development", "Entrepreneurship"]
customer_care_tags.each do |name|
  tag = Tag.where(name: name).first_or_create
  MentorTag.create(
    mentor: mentor,
    tag: tag
  )
end
10.times do
  review = Review.create!(
    content:"I had a fantastic session. Thank you so much",
    rating: 5,
    mentor: mentor,
    user: User.all.where(user != mentor.user).sample
    )
  mentors << mentor
end


user = User.create!(
  name: "Elizabeth Vo",
  email: "liz.vo@yahoo.com",
  password: "password",
  role: "Consultant - Healthcare at Atikus Consulting K.K., Full-Stack Web Developer",
  linkedin_url: "linkedin.com/in/elizabeth-vo",
)
file = URI.open('https://media-exp1.licdn.com/dms/image/C5603AQH3mTv0cG9LWQ/profile-displayphoto-shrink_800_800/0?e=1611792000&v=beta&t=D8tGY9Tr8eR5nNSn9MTqBQofVcwu1HrOzvguVAA7ZXs')
user.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
users << user

mentor = Mentor.create!(
  user: user,
  description: "Australian born and raised in Sydney, former recruiter for the Pharmaceutical industry in Japan.I believe in introducing suitable opportunities for the future",
  price: 4000,
  availability: ["weekdays", "weekends"].sample,
  title: "Consultant - Healthcare at Atikus Consulting K.K., Full-Stack Web Developer",
)
customer_care_tags = ["Consulting", "Healthcare", "Full-Stack Web Development"]
customer_care_tags.each do |name|
  tag = Tag.where(name: name).first_or_create
  MentorTag.create(
    mentor: mentor,
    tag: tag
  )
end
10.times do
  review = Review.create!(
    content:"I had a fantastic session. Thank you so much",
    rating: 5,
    mentor: mentor,
    user: User.all.where(user != mentor.user).sample
    )
  mentors << mentor
end

user = User.create!(
  name: "Tomo Norman",
  email: "tomo.norman@yahoo.com",
  password: "password",
  role: "HR Operations Manager, Senior Instructor, Full-Stack Web Developer",
  linkedin_url: "linkedin.com/in/tomonorman",
)
file = URI.open('https://media-exp1.licdn.com/dms/image/C5603AQFnLbDsyxLe5A/profile-displayphoto-shrink_800_800/0/1516878295459?e=1611792000&v=beta&t=PlfWRMXuyaQuUrquisXkSnOCFyWjL9aWl8sK0hVjehA')
user.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
users << user

mentor = Mentor.create!(
  user: user,
  description: "I have vast amounts of experience from working in HR for a number of years. I have also acquired a lot of skills in full-stack web development ",
  price: 4000,
  availability: ["weekdays", "weekends"].sample,
  title: "HR Operations Manager, Senior Instructor, Full-Stack Web Developer",
)
customer_care_tags = ["Human Resources","Full-Stack Web Development", "Logistics"]
customer_care_tags.each do |name|
  tag = Tag.where(name: name).first_or_create
  MentorTag.create(
    mentor: mentor,
    tag: tag
  )
end
10.times do
  review = Review.create!(
    content:"I had a fantastic session. Thank you so much",
    rating: 5,
    mentor: mentor,
    user: User.all.where(user != mentor.user).sample
    )
  mentors << mentor
end

user = User.create!(
  name: "Seigo Jinbo",
  email: "seigo.jinbo@yahoo.com",
  password: "password",
  role: "Data Analyst, Full-Stack Web Developer",
  linkedin_url: "linkedin.com/in/seigo-jinbo-2836771a7",
)
file = URI.open('https://media-exp1.licdn.com/dms/image/C4D03AQFObj2fZk5h-Q/profile-displayphoto-shrink_800_800/0/1589424657368?e=1611792000&v=beta&t=A1fBnUrldN2M2swuVk6p8ydsD0vhBdNzQmNPcmcgYqg')
user.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
users << user

mentor = Mentor.create!(
  user: user,
  description: "I believe in helping those in need. Very recently I have starting helping people with their web-development needs",
  price: 4000,
  availability: ["weekdays", "weekends"].sample,
  title: " Data Analyst, Full-Stack Web Developer,",
)
customer_care_tags = ["Full-Stack Web Development", "Data Analysis", "Pharmaceuticals"]
customer_care_tags.each do |name|
  tag = Tag.where(name: name).first_or_create
  MentorTag.create(
    mentor: mentor,
    tag: tag
  )
end
10.times do
  review = Review.create!(
    content:"I had a fantastic session. Thank you so much",
    rating: 5,
    mentor: mentor,
    user: User.all.where(user != mentor.user).sample
    )
  mentors << mentor
end






user = User.create!(
  name: "Yuping Kuei",
  email: "yuping.kuei@yahoo.com",
  password: "password",
  role: "Operation Manager at OYO",
  linkedin_url: "linkedin.com/in/yuping-kuei-779724175",
)
file = URI.open('https://media-exp1.licdn.com/dms/image/C5603AQGS_GWszMyU9A/profile-displayphoto-shrink_800_800/0?e=1611792000&v=beta&t=3dFI28lPZ66BbjhwPMIXn2FXC8sTnquTcA9bNbEdToQ')
user.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
users << user

mentor = Mentor.create!(
  user: user,
  description: "I worked for a hospitality/IT startup company. I was mainly responsible to coordinate with international tech team to launch new functions and features both internally and externally as a project leader.",
  price: 4000,
  availability: ["weekdays", "weekends"].sample,
  title: "Operation Manager at OYO",
)
customer_care_tags = ["IT", "Communications"]
customer_care_tags.each do |name|
  tag = Tag.where(name: name).first_or_create
  MentorTag.create(
    mentor: mentor,
    tag: tag
  )
end
10.times do
  review = Review.create!(
    content:"I had a fantastic session. Thank you so much",
    rating: 5,
    mentor: mentor,
    user: User.all.where(user != mentor.user).sample
    )
  mentors << mentor
end




user = User.create!(
  name: "Jessica Ho",
  email: "jessica.ho@yahoo.com",
  password: "password",
  role: "People Partners (Engineer Recruiter) - Mercari, Inc.",
  linkedin_url: "linkedin.com/in/jessica-hwy",
)
file = URI.open('https://media-exp1.licdn.com/dms/image/C5603AQEv73hnoPkAXQ/profile-displayphoto-shrink_800_800/0/1561373486104?e=1611792000&v=beta&t=3TXTnvhciFZgU9wiF7gTayVtkFnumJl4giAx08D79ac')
user.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
users << user

mentor = Mentor.create!(
  user: user,
  description: "I am a tech recruiter and also an expert in full-stack development",
  price: 4000,
  availability: ["weekdays", "weekends"].sample,
  title: "People Partners (Engineer Recruiter) - Mercari, Inc.",
)
customer_care_tags = ["Recruiting","Full-Stack Web Development"]
customer_care_tags.each do |name|
  tag = Tag.where(name: name).first_or_create
  MentorTag.create(
    mentor: mentor,
    tag: tag
  )
end
10.times do
  review = Review.create!(
    content:"I had a fantastic session. Thank you so much",
    rating: 5,
    mentor: mentor,
    user: User.all.where(user != mentor.user).sample
    )
  mentors << mentor
end


# user = User.create!(
#   name: "Takuhei Mizutani",
#   email: "taku.mizutani@yahoo.com",
#   password: "password",
#   role: "",
#   linkedin_url: "",
# )
# file = URI.open('https://avatars0.githubusercontent.com/u/67130385?v=4')
# user.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
# users << user

# mentor = Mentor.create!(
#   user: user,
#   description: "",
#   price: 4000,
#   availability: ["weekdays", "weekends"].sample,
#   title: "",
# )
# customer_care_tags = ["","Full-Stack Web Developer"]
# customer_care_tags.each do |name|
#   tag = Tag.where(name: name).first_or_create
#   MentorTag.create(
#     mentor: mentor,
#     tag: tag
#   )
# end
# mentors << mentor











# user = User.create!(
#   name: "Caroline Whitlock",
#   email: "caroline.whitlock@gmail.com",
#   password: "password",
#   role: "Junior Support Coordinator at Salesforce",
#   linkedin_url: Faker::Internet.email,
# )
# file = URI.open('https://i.pravatar.cc/150?img=48')
# user.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
# users << user

# mentor = Mentor.create!(
#   user: user,
#   description: "I have been at Salesforce as a Junior Administrative Support Coordinator for 3 years",
#   price: Faker::Number.decimal_part(digits: 5),
#   availability: ["weekdays", "weekends"].sample,
#   title: "Junior Support Coordinator at Salesforce",
# )
# administration_tags = ["Administration", "Sales","Software Development",]
# administration_tags.each do |name|
#   tag = Tag.where(name: name).first_or_create
#   MentorTag.create(
#     mentor: mentor,
#     tag: tag
#   )
# end
# mentors << mentor

# user = User.create!(
#   name: "Audrey Trevino",
#   email: "audrey.trevino@gmail.com",
#   password: "password",
#   role: "Full Stack Developer at Bay Morgage Group",
#   linkedin_url: Faker::Internet.email,
# )
# file = URI.open('https://i.pravatar.cc/150?img=47')
# user.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
# users << user

# mentor = Mentor.create!(
#   user: user,
#   description: "I have been at Bay Morgage Group as a full stack dev for 3 years",
#   price: Faker::Number.decimal_part(digits: 5),
#   availability: ["weekdays", "weekends"].sample,
#   title: "Full Stack Developer at  Bay Morgage Grou",
# )
# full_stack_tags = ["Full-Stack Developer", "Law"]
# full_stack_tags.each do |name|
#   tag = Tag.where(name: name).first_or_create
#   MentorTag.create(
#     mentor: mentor,
#     tag: tag
#   )
# end
# mentors << mentor


# user = User.create!(
#   name: "Katherine Langston",
#   email: "katherine.langston@gmail.com",
#   password: "password",
#   role: 'Head Manager at Weber Shandwick',
#   linkedin_url: Faker::Internet.email,
# )
# file = URI.open('https://i.pravatar.cc/150?img=45')
# user.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
# users << user

# mentor = Mentor.create!(
#   user: user,
#   description: "I have been head manager at Weber Shandwick for 3 years",
#   price: Faker::Number.decimal_part(digits: 5),
#   availability: ["weekdays", "weekends"].sample,
#   title: "Head of Management at Weber Shandwick",
# )
# management_tags = ["Management", "Startups", "Education", "Marketing"]
# management_tags.each do |name|
#   tag = Tag.where(name: name).first_or_create
#   MentorTag.create(
#     mentor: mentor,
#     tag: tag
#   )
# end
# mentors << mentor

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




puts "Created #{User.count} users, #{Tag.count} tags,#{Mentor.count} mentors, #{MentorTag.count} mentor tags, #{ConsultationTag.count} consultation tags, #{Review.count} reviews  and #{Consultation.count} consultations"
