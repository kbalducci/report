# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
10.times do
  user = User.create(first_name: Faker::Name.first_name,
                    last_name: Faker::Name.last_name,
                    age: rand(18...30),
                    favorite_color: %w(red blue yellow brown green organge).sample)
  3.times do
    user.meals.create(name: Faker::Hacker.noun,
                      cost: rand(5..99))
  end
  2.times do
    user.pets.create(name: %w(fido fluffy foobar lilbuck beans iron mittens roofus).sample,
                    kind: %w(fish dog cat bird turtle vampire rabbit).sample,
                    weight: rand(14...250)) #oz
  end
end
