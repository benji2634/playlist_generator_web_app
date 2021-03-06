# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Artist.delete_all

artist1 = Artist.create(
    {
        name: "Darius Rucker", 
        website: "http://www.dariusrucker.com/welcome",
        image: "logo.jpg",
        artistid: "1"
    }
)

artist2 = Artist.create(
    {
        name: "Mumford & Sons", 
        website: "http://www.mumfordandsons.com/",
        image: "logo.jpg",
        artistid: "2"
    }
)

artist3 = Artist.create(
    {
        name: "Ed Sheeran", 
        website: "http://www.edsheeran.com/",
        image: "logo.jpg",
        artistid: "3"
    }
)

artist4 = Artist.create(
    {
        name: "Avicii", 
        website: "http://www.avicii.com/",
        image: "logo.jpg",
        artistid: "4"
    }
)

artist5 = Artist.create(
    {
        name: "Justin Timberlake", 
        website: "http://justintimberlake.com/",
        image: "logo.jpg",
        artistid: "5"
    }
)

artist6 = Artist.create(
    {
        name: "Paolo Nutini", 
        website: "http://www.paolonutini.com/splash/1",
        image: "logo.jpg",
        artistid: "6"
    }
)

artist7 = Artist.create(
    {
        name: "The Killers", 
        website: "http://www.thekillersmusic.com/",
        image: "logo.jpg",
        artistid: "7"
    }
)

Genre.delete_all

genre1 = Genre.create({name: "Country"})
genre2 = Genre.create({name: "Folk"})
genre3 = Genre.create({name: "Dance"})
genre4 = Genre.create({name: "Ballad"})
genre5 = Genre.create({name: "Pop"})
genre6 = Genre.create({name: "Indie"})

Playlist.delete_all

playlist1 = Playlist.create(
    {
        name: "Wedding",
        image: "setlist.png",
        playlistid: "1"
    }
)

playlist2 = Playlist.create(
    {
        name: "Pub",
        image: "setlist.png",
        playlistid: "2"
    }
)

playlist3 = Playlist.create(
    {
        name: "Party",
        image: "setlist.png",
        playlistid: "3"
    }
)

Song.delete_all

song1 = Song.create(
  {
    title: "Wagon Wheel", 
    lyrics_url: "https://www.google.co.uk/webhp?sourceid=chrome-instant&ion=1&espv=2&ie=UTF-8#q=wagon%20wheel%20lyrics", 
    artist_id: artist1.id, 
    genre_id: genre1.id, 
    playlist_id: playlist1.id,
    image: "logo.jpg",
    songid: "1"
    }
)

song2 = Song.create(
  {
    title: "Little Lion Man", 
    lyrics_url: "https://www.google.co.uk/webhp?sourceid=chrome-instant&ion=1&espv=2&ie=UTF-8#q=little%20lion%20man%20lyrics", 
    artist_id: artist2.id, 
    genre_id: genre2.id, 
    playlist_id: playlist1.id,
    image: "logo.jpg",
    songid: "2"
  }
)

song3 = Song.create(
  {
    title: "Thinking Out Loud", 
    lyrics_url: "https://www.google.co.uk/webhp?sourceid=chrome-instant&ion=1&espv=2&ie=UTF-8#q=thinking+out+loud+lyrics", 
    artist_id: artist3.id, 
    genre_id: genre4.id, 
    playlist_id: playlist1.id,
    image: "logo.jpg",
    songid: "3"
  }
)

song4 = Song.create(
  {
    title: "Wake Me Up", 
    lyrics_url: "https://www.google.co.uk/webhp?sourceid=chrome-instant&ion=1&espv=2&ie=UTF-8#q=wake%20me%20up%20lyrics", 
    artist_id: artist4.id, 
    genre_id: genre3.id, 
    playlist_id: playlist1.id,
    image: "logo.jpg",
    songid: "4"
  }
)

song5 = Song.create(
  {
    title: "Can\'t Stop The Feeling", 
    lyrics_url: "https://www.google.co.uk/webhp?sourceid=chrome-instant&ion=1&espv=2&ie=UTF-8#q=can+stop+the+feeling+lyrics", 
    artist_id: artist5.id, 
    genre_id: genre5.id, 
    playlist_id: playlist1.id,
    image: "logo.jpg",
    songid: "5"
  }
)

song6 = Song.create(
  {
    title: "10/10", 
    lyrics_url: "https://www.google.co.uk/webhp?sourceid=chrome-instant&ion=1&espv=2&ie=UTF-8#q=10+out+of+10+paolo+nutini+lyrics", 
    artist_id: artist6.id, 
    genre_id: genre3.id, 
    playlist_id: playlist1.id,
    image: "logo.jpg",
    songid: "6"
  }
)

song7 = Song.create(
  {
    title: "Pencil Full of Lead", 
    lyrics_url: "https://www.google.co.uk/webhp?sourceid=chrome-instant&ion=1&espv=2&ie=UTF-8#q=pencil+full+of+lead+paolo+nutini+lyrics", 
    artist_id: artist6.id, 
    genre_id: genre3.id, 
    playlist_id: playlist1.id,
    image: "logo.jpg",
    songid: "7"
  }
)

song8 = Song.create(
  {
    title: "Mr. Brightside", 
    lyrics_url: "https://www.google.co.uk/webhp?sourceid=chrome-instant&ion=1&espv=2&ie=UTF-8#q=mr+brightside+lyrics", 
    artist_id: artist7.id, 
    genre_id: genre6.id, 
    playlist_id: playlist1.id,
    image: "logo.jpg",
    songid: "8"
  }
)

Gig.delete_all

gig1 = Gig.create({location: "Radstone Hotel", date: '2017-02-03', playlist_id: playlist1.id})
gig2 = Gig.create({location: "Dunblane Hydro", date: '2017-01-28', playlist_id: playlist1.id})



