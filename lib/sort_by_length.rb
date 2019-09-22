# A method which will return an array of the words in the string
#  sorted by the length of the word.

# Time complexity: O(n^2) - bubble sort - depends on the length of the array for two loops 
# Space complexity: O(n) - creates a new array for the string in "my_sentence"

# Using bubble sort
def sort_by_length(my_sentence)
  array = my_sentence.split(" ")
  length = array.length
  
  i = 0
  # Outer loop
  while i < length-1
    j = 0
    # Inner loop
    while j < length-1
      # Swap
      if array[j].length > array[j+1].length
        temp = array[j]
        array[j] = array[j+1]
        array[j+1] = temp
      end
      j += 1
    end
    i += 1
  end
  return array
end
