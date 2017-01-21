# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Artist.delete_all

artist1 = Artist.create({name: "The Playlist", website: "http://band-theplaylist.com/"})

Genre.delete_all

genre1 = Genre.create({name: "Country"})

Playlist.delete_all

playlist1 = Playlist.create({name: "Wedding"})

Song.delete_all

Song.create({title: "Wagon Wheel", lyrics_url: "https://www.google.co.uk/webhp?sourceid=chrome-instant&ion=1&espv=2&ie=UTF-8#q=wagon%20wheel%20lyrics", artist_id: artist1.id, genre_id: genre1.id, playlist_id: playlist1.id})

Gig.delete_all

Gig.create({location: "Radstone Hotel", date: '2017-02-02', playlist_id: playlist1.id})