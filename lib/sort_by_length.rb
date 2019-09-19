# A method which will return an array of the words in the string
#  sorted by the length of the word.
# Time complexity: ?
# Space complexity: ?

def sort_by_length(my_sentence)
  words_array = my_sentence.split
  num_words = words_array.length
  
  i = 0
  
  while i < num_words - 1
    j = 0
    
    while j < (num_words - i - 1)
      if words_array[j].length > words_array[j+1].length
        temp = words_array[j]
        words_array[j] = words_array[j + 1]
        words_array[j + 1] = temp
      end
      j += 1
    end
    i += 1
  end
  return words_array
end
