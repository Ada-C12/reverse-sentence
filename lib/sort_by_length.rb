# A method which will return an array of the words in the string
#  sorted by the length of the word.

# Time complexity: O(n^2); Turning a string into an array is O(n) because the program has to traverse each character of the string
# in order to parse it into an array. Then, sorting the array w/Bubble sort is O(n^2) because for each element in the array O(n) it
# has to do O(n) comparisons resulting in O(n^2) run time.

# Space complexity: O(n); Turning a string into an array is O(n) because space is allocated for a new array in direct proportion to 
# the size of my_sentence. Bubble sort is O(1) because it creates the same number of variables (new storage) regardless of the size
# of the array. Therefore, this method has O(n) space complexity since the O(n) takes precedence over the O(1)

def sort_by_length(my_sentence)
  array = []
  array_index = 0
  sentence_length = my_sentence.length
  word_end = 0
  array_word = ""
  
  # Instead of .split -- makes an array
  while word_end <= sentence_length
    if my_sentence[word_end] != " " && my_sentence[word_end] != nil
      array_word = array_word + my_sentence[word_end]
      word_end += 1
    elsif  array_word != ""
      array[array_index] = array_word
      array_index += 1
      array_word = ""
      word_end +=1
    else
      word_end +=1
    end
  end
  
  # Arrange array using bubble sort w/optimization for already sorted arrays
  length = array.length
  i = 0
  swapped = true
  
  while i < length-1 && swapped
    j = 0
    swapped = false
    while j < length-i-1
      if array[j].length > array[j+1].length
        temp = array[j]
        array[j] = array[j+1]
        array[j+1] = temp
        swapped = true
      end
      j += 1
    end
    i += 1
  end
  return array
end
