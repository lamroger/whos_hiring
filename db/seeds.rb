# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

quizlet = Company.create(
  name: 'Quizlet', 
  website: 'https://quizlet.com',
  description: 
    <<-DESC
Quizlet makes simple learning tools that let you study anything. 
Start learning today with flashcards, games and learning tools — all for free.
    DESC
)

['PHP', 'Go', 'React', 'Tornado', 'AWS', 'GCP', 'Docker', 'Python', 'C++', 'Javascript'].each do |name|
  Technology.create(name: name)
end

Position.create(
  title: 'Software Engineer', 
  location: 'San Francisco',
  description: 
    <<-DESC,
Each engineer at Quizlet gets the opportunity to punch above their weight — owning entire projects and striving for excellence and quality in design, architecture, performance and user experience. Being a member of a small, nimble team tackling big problems means that you can get creative about what technologies you deploy.
As an engineer at Quizlet you must care passionately about user experience, and develop a deep understanding of how users interact with Quizlet. You will not be just a cog in a machine, but rather you will attend school visits, meet with students and teachers, and have a major voice in product decisions.
We are scaling rapidly at Quizlet. Over 20M users a month depend on us for their daily studies and demand innovative new learning tools and games. This means big engineering challenges that require smart, creative people to solve them. What are you passionate about? What technological challenges excite you? Whether it’s building robust APIs, deploying front-end performance improvements, architecting new search infrastructure, or designing new learning games, the odds are we have a challenge here you’ll be excited about.
    DESC
  company_id: quizlet.id,
  technologies: Technology.where("name = 'PHP' OR name = 'Go' OR name = 'React'")
)

deepgram = Company.create(
  name: 'Deepgram', 
  website: 'https://deepgram.com',
  description: 
    <<-DESC
We do search for recorded speech using machine-learning. 
We find keywords/phrases and predict what's in videos, podcasts, phone calls—anything with recorded speech, really.
    DESC
)

Position.create(
  title: 'Web Engineer', 
  location: 'San Francisco',
  description: 
    <<-DESC,
We need help building-out the speech search API and front ends. 
Leans toward backend but creating good interfaces is needed. 
Creativity, high energy, motivation, and experience building APIs and complicated web apps is a must. 
Experience working with Tornado, AWS, GCP, Docker and fluency in Python, C++, Javascript is a big deal too.
    DESC
  company_id: deepgram.id,
  technologies: Technology.where("name = 'Tornado' OR name = 'AWS' OR name = 'GCP' OR name = 'Docker' OR name = 'Python' OR name = 'C++' OR name = 'Javascript'")
)

