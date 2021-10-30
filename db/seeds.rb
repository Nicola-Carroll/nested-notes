# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

notes = [
  { title: 'Hello!', body: 'This is an example note' },
  { title: 'Shopping list', body: 'Apples, Cereal, Snacks' },
  {
    title: 'Reading list',
    body: 'Katie Price authobiography, the dictionary, my revision notes'
  },
  { title: 'Hello +1 !', body: 'This is a child note', parent_id: 1 }
]

notes.each { |note| Note.create(note) }
