# U2.W6: Create a Playlist from Driver Code


# I worked on this challenge by myself.


# Pseudocode
# 1. Add Song class
# 2. Add initialize method for Song that takes in 2 arguments
# 3. Add Playlist class
# 4. Add initialize method for Playlist that takes in any number of Songs
# 5. Add add method to Playlist that takes any number of Songs
# 6. Add num_of_tracks method to Playlist
# 7. Add method play to Song
# 8. Add method remove to Playlist that takes any number of Songs
# 9. Add method includes? to Playlist that takes a single Song as a parameter
# 10. Add method play_all to Playlist


# Initial Solution
# class Song
# 	def initialize(track_name, artist_name)
# 	end

# 	def play
# 	end
# end

# class Playlist
# 	def initialize(*songs)
# 	end

# 	def add(*songs)
# 	end

# 	def num_of_tracks
# 	end

# 	def remove(*songs)
# 	end

# 	def includes?(song)
# 	end

# 	def play_all
# 	end

# 	def display
# 	end
# end

# Refactored Solution

class Song
	def initialize(track_name, artist_name)
		@song = {:track => track_name, :artist => artist_name}
	end

	def play
		@song
	end
end

class Playlist
	def initialize(*songs)
		@playlist = []
		songs.each{|song| @playlist << song}
	end

	def add(*songs)
		songs.each{|song| @playlist << song}
	end

	def num_of_tracks
		@playlist.length
	end

	def remove(*songs)
		songs.each{|song| @playlist.delete(song)}
	end

	def includes?(song)
		@playlist.include?(song)
	end

	def play_all
		puts "The playlist will play songs in the order they are added."
		display
	end

	def display
		puts "-"*100
		puts "Current playlist queue: "
		@playlist.each_with_index{|song, track_num| puts "Track ##{track_num+1}: #{song.play[:track]} by #{song.play[:artist]}"}
		puts "-"*100
	end
end




# DRIVER TESTS GO BELOW THIS LINE

def assert
	raise "Assertion failed!" unless yield
end


one_by_one = Song.new("One by One", "Sirenia")
world_so_cold = Song.new("World So Cold", "Three Days Grace") 
going_under = Song.new("Going Under", "Evanescence")
 
my_playlist = Playlist.new(one_by_one, world_so_cold, going_under)
 
lying_from_you = Song.new("Lying From You", "Linkin Park")
angels = Song.new("Angels", "Within Temptation")
 
my_playlist.add(lying_from_you, angels)
assert{my_playlist.num_of_tracks == 5}
going_under.play
my_playlist.remove(angels)
assert{my_playlist.num_of_tracks == 4}
assert{my_playlist.includes?(lying_from_you)}
my_playlist.play_all
my_playlist.display





# Reflection 
# In this challenege I was able to get a good sense of how I could use objected oriented programming in a real-world scenario. I decided to use a hash instead of an array to hold the track name and artist name; I think this worked out well because I was able to create nice descriptive keys (:track and :artist) that correspond with the values. I was a bit confused about what the Playlist methods .play_all and .display were supposed to do, but I suppose that was up to me to decide. Personally, I had .play_all just call .display, because in a real-world scenario, i.e. at a jukebox, you can't play all of the songs at once. Rather, you have to add a song to the current playlist and wait for it to get played. I set up the .display method to show the current queue of tracks.