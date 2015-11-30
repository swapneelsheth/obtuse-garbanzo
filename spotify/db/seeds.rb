# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Song.destroy_all
Album.destroy_all
Rating.destroy_all

who = Album.create(:name => "My Generation", :genre => "Rock", :release => "1965-12-03")
doors = Album.create(name: "L.A. Woman", :genre => "Rock", release: "1971-04-19")
led = Album.create(name: "Led Zeppelin IV", :genre => "Rock", release: "1971-11-08")

d1 = Song.create(name: "Love Her Madly", album_id: doors.id)
d2 = Song.create(name: "Riders on the Storm", album_id: doors.id)
w1 = Song.create(name: "My Generation", album_id: who.id)
w2 = Song.create(name: "The Kids are alrite", album_id: who.id)
l1 = Song.create(name: "Going to California", album_id: led.id)
# Song.create(name: "Going to California", album_id: led.id)
l2 = Song.create(name: "Black Dog", album_id: led.id)
l3 = Song.create(name: "Rock and Roll", album_id: led.id)
l4 = Song.create(name: "Stairway to Heaven", album_id: led.id)

Rating.create(review: 4, song_id: d1.id)
Rating.create(review: 5, song_id: d2.id)
Rating.create(review: 2, song_id: w1.id)
Rating.create(review: 3, song_id: w2.id)
Rating.create(review: 5, song_id: l1.id)
Rating.create(review: 4, song_id: l2.id)
Rating.create(review: 3, song_id: l3.id)
Rating.create(review: 4, song_id: l4.id)
