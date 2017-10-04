#Dictionary sort
def dictionary_sort (some_array)
  recursive_sort some_array, []
end
def recursive_sort(unsorted_array, sorted_array)
  if unsorted_array == []
    return sorted_array
  end
  smallest_word = unsorted_array.inject(unsorted_array[0]){|min, w| w.downcase <= min.downcase  ? min=w : min}
  (unsorted_array.count(smallest_word)).times {sorted_array << smallest_word }
  unsorted_array-=[smallest_word]
  recursive_sort(unsorted_array, sorted_array)

end
