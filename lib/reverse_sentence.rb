# A method to reverse the words in a sentence, in place.
# Time complexity: ?
# Space complexity: ?
require 'pry'
def reverse_sentence(my_sentence)
  if my_sentence == ""
    return ""
  elsif my_sentence == nil
    return nil
  end
  
  array = my_sentence.split(' ')
  length = array.length
  i = 0
  # If the inner loop runs with no swaps, exit
  swapped = true
  while i < length-1 && swapped # outer loop
    j = 0
    # Assume you won't have to make a swap
    swapped = false
    while j < length-i-1 # inner loop
      if array[j] > array[j+1] # swap
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
  
  raise NotImplementedError
end
