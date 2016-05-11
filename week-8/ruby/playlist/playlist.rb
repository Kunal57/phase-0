# Create a Playlist from Driver Code

# I worked on this challenge [by myself].
# I spent [#] hours on this challenge.


# Pseudocode


# Initial Solution

class Song
	attr_reader :name, :artist
	def initialize(name, artist)
		@name = name
		@artist = artist
	end

	def play
		puts "Now Playing: '#{@name}' by #{@artist}"
	end
end

class Playlist
	attr_accessor :name, :artist
	def initialize (*song)
		@song = []
		@song.concat(song)
	end

	def add (*song)
		@song.concat(song)
	end

	def num_of_tracks
		puts "Playlist has #{@song.length} tracks."
		return @song.length
	end

	def remove (song)
		@song.delete(song)
	end

	def includes?(song)
		@song.each do |x|
			if (x == song)
				return true
			end
		end
	end

	def play_all
		@song.each do |x|
			x.play
		end
	end

	def display
		puts "Your Playlist -"
		@song.each do |s|
			puts "#{s.name}: #{s.artist}"
		end
	end
end






# DRIVER CODE AND TESTS GO BELOW THIS LINE
one_by_one = Song.new("One by One", "Sirenia")
world_so_cold = Song.new("World So Cold", "Three Days Grace")
going_under = Song.new("Going Under", "Evanescence")

my_playlist = Playlist.new(one_by_one, world_so_cold, going_under)

lying_from_you = Song.new("Lying From You", "Linkin Park")
angels = Song.new("Angels", "Within Temptation")

my_playlist.add(lying_from_you, angels)
p my_playlist.num_of_tracks == 5
going_under.play #How would you model a song getting "played" in Ruby? I used `puts` and `sleep`. You can model this however you want.
my_playlist.remove(angels)
p my_playlist.includes?(lying_from_you) == true
my_playlist.play_all
my_playlist.display
