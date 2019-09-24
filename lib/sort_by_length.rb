# A method which will return an array of the words in the string
#  sorted by the length of the word.
# Time complexity: The time complexity of this method is O(n) where n is the length of the my_sentence_array, or the number of words in the my_sentence string. The time that the algorithm takes will increase linearly with the number of words passed in. 

# Space complexity: The space complexity of this method is O(1) because the space that the variables take up stays constant regardless of how many words the string contains.

def sort_by_length(my_sentence)
  my_sentence_array = my_sentence.split(" ")
  
  i = 1
  
  while i < my_sentence_array.length
    comparison_index = i
    j = i - 1
    
    i.times do
      if my_sentence_array[comparison_index].length < my_sentence_array[j].length
        new_comparison_index = my_sentence_array[j]
        new_j = my_sentence_array[comparison_index]
        
        my_sentence_array[comparison_index] = new_comparison_index
        my_sentence_array[j] = new_j
      end
      j -= 1
      comparison_index -= 1
    end
    i += 1
  end
  
  return my_sentence_array
end
