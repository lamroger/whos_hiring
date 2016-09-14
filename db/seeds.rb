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

TECHNOLOGIES = [
  'PHP', 'Go', 'React', 'Tornado', 'AWS', 
  'GCP', 'Docker', 'Python', 'C++', 'Javascript',
  'HPCC', 'DNN', 'Chef'
]

TECHNOLOGIES.each do |name|
  Technology.create(name: name)
end

Position.create(
  title: 'Software Engineer', 
  location: 'San Francisco',
  description: 
    <<-DESC,
What are you passionate about? What technological challenges excite you? 
Whether it’s building robust APIs, deploying front-end performance improvements, architecting new search infrastructure, or designing new learning games, the odds are we have a challenge here you’ll be excited about.
    DESC
  company_id: quizlet.id,
  technologies: Technology.where("name = 'PHP' OR name = 'Go' OR name = 'React'"),
  contact: 'https://quizlet.com/jobs/122993'
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
  technologies: Technology.where("name = 'Tornado' OR name = 'AWS' OR name = 'GCP' OR name = 'Docker' OR name = 'Python' OR name = 'C++' OR name = 'Javascript'"),
  contact: 'careers@deepgram.com'
)

Position.create(
  title: 'AI Scientist', 
  location: 'San Francisco',
  description: 
    <<-DESC,
 We need help building DNN models, and running it all on a HPC cluster. 
 Creativity, high energy, motivation, and experience building DNNs in images, speech, or similar is a huge plus. 
 Large scale computing and low level hardware experience is a great thing to have too.
    DESC
  company_id: deepgram.id,
  technologies: Technology.where("name = 'HPCC' OR name = 'DNN'"),
  contact: 'careers@deepgram.com'
)

Position.create(
  title: 'DevOps Engineer', 
  location: 'Remote',
  description: 
    <<-DESC,
We do stuff.
    DESC
  company_id: deepgram.id,
  technologies: Technology.where("name = 'Docker' OR name = 'Chef'"),
  contact: 'careers@deepgram.com'
)


