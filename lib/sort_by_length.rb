# A method which will return an array of the words in the string
#  sorted by the length of the word.
# Time complexity: ?
# Space complexity: ?
def sort_by_length(my_sentence)
  my_sentence_array = my_sentence.split(" ")
  
  i = 1
  while i < my_sentence_array.length
    value = i
    j = i - 1
    i.times do
      if my_sentence_array[value].length < my_sentence_array[j].length
        new_value = my_sentence_array[j]
        new_j = my_sentence_array[value]
        
        my_sentence_array[value] = new_value
        my_sentence_array[j] = new_j
      end
      j -= 1
      value -= 1
    end
    i += 1
  end
  
  return my_sentence_array
end


puts sort_by_length("words are the a")