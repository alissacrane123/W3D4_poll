# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

10.times { User.create!(username: Faker::Internet.email) }
10.times { Poll.create!(title: Faker::Beer.brand, author_id: User.all.sample.id) }
10.times { Question.create!(question_text: Faker::Beer.style, poll_id: Poll.all.sample.id) }

Question.all.each do |question|
  AnswerChoice.create!(answer_text: 'yes', question_id: question.id)
  AnswerChoice.create!(answer_text: 'no', question_id: question.id)
end 

20.times { Response.create!(responder_id: User.all.sample.id, question_id: Question.all.sample.id, answer_id: AnswerChoice.all.sample.id) }