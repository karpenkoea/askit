# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
50.times do
  title = Faker::Food.dish #=> "Caesar Salad"
  body = Faker::Hipster.paragraph(sentence_count: 2, supplemental: false, random_sentences_to_add: 4)

  Question.create title: title, body: body
end
