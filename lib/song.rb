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
  genre_hash.each_pair do |key, value|
  @@genres.each do |word|
    if genre_hash.haskey?(word) == false
      genre_hash[word] = 1
    else
      genre_hash[word] = value + 1


    end
  end
end
#binding.pry
  genre_hash
end

def self.artist_count

end

end
