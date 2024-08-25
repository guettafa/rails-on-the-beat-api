# I mock data here

require 'faker'
require 'open-uri'

# Mocking Artists
10.times do
  Artist.create!(
    email: Faker::Internet.unique.email,
    name: Faker::Internet.unique.user,
    bio: "Am so cooooool",
    avatar: File.open(URI.open(Faker::Avatar.image))
  )
end

# Mocking Sounds
20.times do
  Sound.create!(
    title: Faker::Music.band,
    description: "A music",
    artist_id: rand(1..10),
    audio: nil,
    genre: [ :electronic, :pop, :digicore, :jazz ].shuffle.first,
    hidden: rand(2) == 1,
    artwork: File.open(URI('https://loremflickr.com/1020/240/breakcore').open)
  )
end
