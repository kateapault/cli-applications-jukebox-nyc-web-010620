# Add your code here
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
  puts "- list : displays a list of the songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def list(songs)
  songs.each_with_index do |song, ind|
    puts "#{ind+1}. #{song}"
  end
end

def play(songs)
  puts "Please enter a song name or number:"
  user_response = gets.strip
  songs.each_with_index do |song, ind|
    song_name = song.split('-')[1]
    if user_response == (ind+1).to_s
      puts "Playing " + song_name
    elsif user_response.downcase == song_name.strip.downcase
      puts "Playing " + song_name
    else
      puts "Invalid input, please try again"
    end
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  puts "Please enter a command:"
  valid_command = false
  until valid_command
    user_command = gets.strip.downcase
    case user_command
    when 'help'
      valid_command = true
      help
    when 'list'
      valid_command = true
      list(songs)
    when 'play'
      valid_command = true
      play(songs)
    when 'exit'
      valid_command = true
      exit_jukebox
    else
      puts "Invalid input, please try again"
    end
  end
  
end