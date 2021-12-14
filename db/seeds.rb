# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

puts "Cleaning database..."
Playlist.destroy_all
Artist.destroy_all

puts "Creating artists..."
10.times do
  Artist.create!(
    name: Faker::JapaneseMedia::Conan.character,
    description: Faker::Quote.famous_last_words,
    photo: Faker::Avatar.image
  )
end
puts "#{Artist.count} artists created!"

puts "Creating albums..."
Artist.all.each do |artist|
  4.times do
    Album.create!(
      artist: artist,
      title: Faker::Music.album,
      year: rand(1951..2021),
      cover: Faker::LoremPixel.image
    )
  end
end
puts "#{Album.count} albums created!"

puts "Creating songs..."
Album.all.each do |album|
  10.times do
    Song.create!(
      album: album,
      title: Faker::JapaneseMedia::OnePiece.island,
      duration: rand(150..200),
      genre: Faker::Music.genre
    )
  end
end
puts "#{Song.count} songs created!"
