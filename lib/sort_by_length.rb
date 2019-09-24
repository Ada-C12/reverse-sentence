# Time complexity: O(n^2)
# Space complexity: O(n)
def sort_by_length(my_sentence)
  my_sentence_array = my_sentence.split(' ')
  length = my_sentence_array.length
  i = 1 

  while i < length 
    to_insert = my_sentence_array[i]
    j = i 

    while j > 0 && my_sentence_array[j-1].length > to_insert.length
      my_sentence_array[j] = my_sentence_array[j - 1]
      j -= 1
    end 
    my_sentence_array[j] = to_insert
    i += 1
  end 
  return my_sentence_array
end 