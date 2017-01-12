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
  puts "I accept the following commands:\n
  - help : displays this help message\n
  -list : displays a list of songs you can play\n
  -play : lets you choose a song to play\n
  -exit : exits this program"
end

def list(songs)
  songs.each_with_index{|song, index|
    puts "#{index + 1}. #{song}"
  }
end

def play(songs)
  puts "Please entere a song name or number:"
  song_to_play = gets.chomp
  if song_to_play.length == 1
    puts "Playing #{songs[song_to_play.to_i - 1]}"
  elsif songs.include?(song_to_play)
    puts "Playing #{song_to_play}"
  else
    puts "Invalid input, please try again"
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  help
  response = ""
  while response != 'exit'
  puts "Please enter a command:"
  response = gets.chomp
    case response
    when 'list'
      list(songs)
    when 'play'
      play(songs)
    when 'help'
      help
    else
      exit_jukebox
    end
  end
end
