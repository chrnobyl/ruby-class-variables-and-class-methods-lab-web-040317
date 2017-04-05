class Song
	@@count = 0
	@@artists = []
	@@genres = []


	def initialize(name, artist, genre)
		@name = name
		@artist = artist
		@genre = genre
		@@count += 1
		@@artists << artist
		@@genres << genre
	end

	attr_accessor :name, :artist, :genre

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
		counts = Hash.new 0
		@@genres.each do |g|
			counts[g] += 1
		end
		counts
	end

	def self.artist_count
		counts = Hash.new 0
		@@artists.each do |a|
			counts[a] += 1
		end
		counts
	end



	

end
