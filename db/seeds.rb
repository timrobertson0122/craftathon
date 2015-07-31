# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
require 'faker'

100.times do |i|
  job = Job.create
  questionaire = Questionaire.create(title:Faker::Name.title,
                                      company_name:Faker::Company.name,
                                      size:Faker::Number.between(1,10000),
                                      positions:Faker::Number.between(1,10),
                                      tech:Faker::Hacker.noun,
                                      actualtech:Faker::Hacker.noun,
                                      tasks:Faker::Hacker.say_something_smart,
                                      results:Faker::Hacker.say_something_smart,
                                      difference:Faker::Lorem.sentence,
                                      ideal:Faker::Hacker.ingverb,
                                      recruitment:Faker::Hacker.say_something_smart,
                                      character:Faker::Hacker.adjective,
                                      onboarding:Faker::Hacker.say_something_smart,
                                      training:Faker::Lorem.sentence,
                                      pay:Faker::Number.negative,
                                      location:Faker::Address.time_zone,
                                      parttime:Faker::Lorem.word,
                                      job_id: job.id
                                      )
end
