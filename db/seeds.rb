# I mock data here

require 'faker'
require 'open-uri'

# Mocking Artists
5.times do
  Artist.create!(
    name: Faker::Name.unique.first_name,
    email: Faker::Internet.unique.email,
    bio: "Am so cooooool",
    avatar: File.open(URI.open(Faker::Avatar.image))
  )
end

# Mocking Sounds
20.times do
  Sound.create!(
    title: Faker::Music.band,
    description: "A music",
    artist_id: rand(1..5),
    audio: File.open(URI('https://www2.cs.uic.edu/~i101/SoundFiles/CantinaBand60.wav').open),
    genre: [ :electronic, :pop, :digicore, :jazz ].shuffle.first,
    is_visible: rand(2) == 1,
    artwork: File.open(URI('https://loremflickr.com/500/500/breakcore').open)
  )
end

# Mocking comments
10.times do
  Comment.create!(
    content: Faker::Markdown.emphasis,
    sound_id: rand(1..20),
    artist_id: rand(1..5)
  )
end
