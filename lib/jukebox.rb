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

def list(songs)
  songs.each_with_index do |song, i|
    puts "#{i+1}. #{song}"
  end
end

def play(songs)
  puts "Please enter a song name or number:"
  users_response = gets.chomp.to_s
    songs.each_with_index do |song, i|
      if users_response == song
        puts "Playing #{song}"
      elsif users_response.to_i == (i + 1)
        puts "Playing #{songs[i]}"

      else
        puts "Invalid input, please try again"
      end
    end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  help
  puts "Please enter a command:"
    while true do
      users_response = gets.chomp
      break if users_response == "exit"
      puts "Please enter a command:"
    end

    until users_response == "exit" do
      puts "Please enter a command:"
      users_response
    end
      if users_response == "help"
        help
      elsif users_response == "list"
        list(songs)
      elsif users_response == "play"
        play(songs)
      elsif users_response == "exit"
        exit_jukebox
      end
end
