

my_songs = {
  "Go Go GO" => '/Users/limerentfox/Development/Learn/labs/jukebox-cli-web-1116/audio/Emerald-Park/01.mp3',
  "LiberTeens" => '/Users/limerentfox/Development/Learn/labs/jukebox-cli-web-1116/audio/Emerald-Park/02.mp3',
  "Hamburg" =>  '/Users/limerentfox/Development/Learn/labs/jukebox-cli-web-1116/audio/Emerald-Park/03.mp3',
  "Guiding Light" => '/Users/limerentfox/Development/Learn/labs/jukebox-cli-web-1116/audio/Emerald-Park/04.mp3',
  "Wolf" => '/Users/limerentfox/Development/Learn/labs/jukebox-cli-web-1116/audio/Emerald-Park/05.mp3',
  "Blue" => '/Users/limerentfox/Development/Learn/labs/jukebox-cli-web-1116/audio/Emerald-Park/06.mp3',
  "Graduation Failed" => '/Users/limerentfox/Development/Learn/labs/jukebox-cli-web-1116/audio/Emerald-Park/07.mp3'
}

def help
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end



def list(my_songs)
  my_songs.collect do |k,v|
    puts k
  end
  #this method is different! Collect the keys of the my_songs hash and
  #list the songs by name
end


def play(my_songs)
  puts "Please enter a song name:"
  users_response = gets.chomp
    my_songs.each do |k, v|
      if users_response == k
        system %{open "#{v}"}
      else
        puts "Invalid input, please try again"
      end
    end
end


def exit_jukebox
  puts "Goodbye"
end

def run(my_songs)
    help
    puts "Please enter a command:"
    while users_response = gets.chomp
      if users_response == "help"
        help
      elsif users_response == "list"
        list(my_songs)
      elsif users_response == "play"
        play(my_songs)
      elsif users_response == "exit"
        exit_jukebox
      end
      break if users_response == "exit"
      puts "Please enter a command:"
    end
end
