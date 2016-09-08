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

Position.create(
  title: 'Software Engineer', 
  location: 'San Francisco',
  company_id: quizlet.id
)
