#Better playlist
Dir.chdir('/home/m/Desktop/music/')
songs = Dir['/home/m/Desktop/music/*.mp3']

def shuffle (some_array)
  recursive_shuffle some_array, []
end
def recursive_shuffle(unshuffled_array, shuffled_array)
  if unshuffled_array == []
    return shuffled_array
  end
  word = unshuffled_array[rand(unshuffled_array.length)]
  shuffled_array << word
  unshuffled_array.delete_at(unshuffled_array.index(word))
  recursive_shuffle(unshuffled_array, shuffled_array)
end
shuffled_songs = shuffle(songs)
10.times{shuffled_songs = shuffle(shuffled_songs)}
shuffled_songs
 File.open('playlist.m3u', 'w')  do |line|
shuffled_songs.each do |name|  line.write(name+"\n")
end
end
