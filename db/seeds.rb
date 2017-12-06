require 'securerandom'
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#

ians_pact = NewPactForm.new(
  name: 'Ian',
  email: 'ian@test.com',
  action: 'sweep the pavement of Station Road',
  people_requirement: 10
)
PactCreator.create!(ians_pact, source: 'test_data')
