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
    if genre_hash.!include? genre_hash[word]
      genre_hash[word] = 1
    else
      genre_hash[word].each_pair do |key, value|
        genre_hash[key] = value +1
      end
      end
#binding.pry
  end
  genre_hash
end

def self.artist_count

end

end
