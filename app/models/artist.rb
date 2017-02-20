class Artist < ActiveRecord::Base
  has_many :songs
  has_many :genres, through: :songs

def get_genre_of_first_song
  #return the genre of the artist's first saved song
  self.songs.first.genre
end

def song_count
  #return the number of songs associated with the artist
  self.songs.size
end

def genre_count
  #return the number of genres associated with the artist

  self.genres.size
end

end
# @pop = Genre.create(name: "pop")
# @indie = Genre.create(name: "indie")
# @rock = Genre.create(name: "rock")
# @country = Genre.create(name: "country")
#
# @adele = Artist.create(name: "Adele")
# @rolling_in_the_deep2 = Song.create(name: "Rolling in the Deep")
# @rolling_in_the_deep2.artist = @adele
# @rolling_in_the_deep2.genre = @pop
#
# @turning_tables = Song.create(name: "Turning Tables")
# @turning_tables.artist = @adele
# @turning_tables.genre = @pop
#
# @hello = Song.create(name: "Hello")
# @hello.artist = @adele
# @hello.genre = @rock
#
# @chvrches = Artist.create(name: "Chvrches")
#
# @tether = Song.create(name: "Tether")
# @tether.artist = @chvrches
# @tether.genre = @indie
#
# @gun = Song.create(name: "Gun")
# @gun.artist = @chvrches
# @gun.genre = @indie
#
# @clearest_blue = Song.create(name: "Clearest Blue")
# @clearest_blue.artist = @chvrches
# @clearest_blue.genre = @pop
#
# @carrie_under = Artist.create(name: "Carrie Underwood")
#
# @remind_me = Song.create(name: "Remind Me")
# @remind_me.artist = @carrie_under
# @remind_me.genre = @country
#
# @wasted = Song.create(name: "Wasted")
# @wasted.artist = @carrie_under
# @wasted.genre = @country
#
# @mama = Song.create(name: "Mama")
# @mama.artist = @carrie_under
# @mama.genre = @pop
#
# @heartbeat = Song.create(name: "Heartbeat")
# @heartbeat.artist = @carrie_under
# @heartbeat.genre = @rock
