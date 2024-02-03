require "faker"

puts Faker.class
puts Faker::Name.class
puts Faker::Name.name
puts Faker::Name.first_name
puts Faker::Name.last_name

puts Faker::Music.instrument
puts Faker::Sports::Football.player