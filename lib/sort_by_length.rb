# A method which will return an array of the words in the string
#  sorted by the length of the word.
# Time complexity: ?
# Space complexity: ?
def sort_by_length(my_sentence)
  if my_sentence == ""
    return []
  end
  
  array = my_sentence.split(' ')
  # longest_string = array.first
  length = array.length
  
  # If the inner loop runs with no swaps, exit
  swapped = true
  i = 0
  while i < length-1 && swapped # outer loop
    j = 0
    # Assume you won't have to make a swap
    swapped = false
    while j < length-i-1 # inner loop
      if array[j].length > array[j+1].length # swap
        temp = array[j]
        array[j] = array[j+1]
        array[j+1] = temp
        # Since we just made a swap, set swapped to true
        swapped = true
      end
      j += 1
    end
    i += 1
  end
  return array
  raise NotImplementedError, "Method not implemented"
end
