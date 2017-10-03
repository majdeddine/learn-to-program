#Shuffle array
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
