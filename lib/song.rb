require 'pry'

class Song
  attr_accessor :name, :artist, :genre
  @@count = 0
  @@artists = []
  @@genres = []

def initialize (name, artist, genre)
  @name = name
  @artist = artist
  @genre = genre
  @@count += 1
  @@artists << artist
  @@genres << genre
end

def self.count
  @@count
end

def self.artists
  @@artists.uniq
end

def self.genres
  @@genres.uniq
end

def self.genre_count
  genre_hash = {}
  @@genres.each do |word|
    genre_hash.has_key?(word)
      genre_hash[word] = 1
    # else
    #   genre_hash[word].value == value += 1
# end
end
#binding.pry

  genre_hash
end

def self.artist_count

end

end
