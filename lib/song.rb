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
    genre_hash[word].each do |key, value|
      genre_hash[key] = value +1
    end
  end


#     if genre_hash.!include? genre_hash[word]
#       genre_hash[word] = 1
#     else
#
#       end
#       end
# #binding.pry
#   end
  genre_hash
end

def self.artist_count

end

end
