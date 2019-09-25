# A method which will return an array of the words in the string
#  sorted by the length of the word.
# Time complexity: O(n)
# Space complexity: O(n)
def sort_by_length(my_sentence)
  my_array = my_sentence.split(" ")
  i = 1
  
  while i < my_array.length
    to_insert = my_array[i]
    j = i
    
    while j > 0 && my_array[j-1].length > to_insert.length
      my_array[j] = my_array[j-1]
      j -= 1
    end
    my_array[j] = to_insert
    i += 1
  end
  return my_array
end
