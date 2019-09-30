# A method which will return an array of the words in the string
#  sorted by the length of the word.
# Time complexity: O(n^2)
# Space complexity: O(1)
def sort_by_length(my_sentence)
  
  # I'm assuming split is O(n), 
  # can't imagine it needing more than one pass through n
  sent_array = my_sentence.split(" ")
  count = sent_array.length
  
  if count == 0
    return sent_array
  end
  
  i = 1
  while i < count
    to_insert = sent_array[i]
    j = i
    
    while j > 0 && sent_array[j-1].length > to_insert.length
      sent_array[j] = sent_array[j-1]
      j -= 1
    end
    
    sent_array[j] = to_insert
    i += 1
  end
  
  return sent_array
end
