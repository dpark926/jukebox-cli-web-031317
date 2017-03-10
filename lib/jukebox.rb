songs = [
  "Phoenix - 1901",
  "Tokyo Police Club - Wait Up",
  "Sufjan Stevens - Too Much",
  "The Naked and the Famous - Young Blood",
  "(Far From) Home - Tiga",
  "The Cults - Abducted",
  "Phoenix - Consolation Prizes",
  "Harry Chapin - Cats in the Cradle",
  "Amos Lee - Keep It Loose, Keep It Tight"
]

def help
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def play(songs_array)
  puts "Please enter a song name or number:"
	input = gets.chomp

	i = songs_array.index(input)

	if input.to_i <= songs_array.length && input.to_i > 0
		puts "Playing #{songs_array[input.to_i - 1]}"
	elsif i != nil
		puts "Playing #{songs_array[i]}"
	else
		puts "Invalid input, please try again"
	end
end

def list(songs_array)
  i = 0
  while i < songs_array.length
    puts "#{i + 1}. #{songs_array[i]}"
    i += 1
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  help

	i = 0
	while i < 10000
		puts "Please enter a command:"
		input = gets.chomp.downcase

		if input == "help"
			help
		elsif input == "list"
			list(songs)
		elsif input == "play"
			play(songs)
		elsif input == "exit"
			exit_jukebox
			break
		end
	end

end
