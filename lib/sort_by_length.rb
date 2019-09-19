# A method which will return an array of the words in the string
#  sorted by the length of the word.
# Time complexity: O(n2)
# Space complexity: O(n)
def sort_by_length(my_sentence)
  # raise NotImplementedError, "Method not implemented"
  return nil if my_sentence.nil?
  i = 0
  arr = my_sentence.split(' ')
  while i < arr.length
    min_length_index = i
    j = i
    while j < arr.length
      min_length_index = j if arr[j].length < arr[min_length_index].length
      j += 1
    end
    temp = arr[i]
    arr[i] = arr[min_length_index]
    arr[min_length_index] = temp
    i += 1  
  end
  return arr
end
