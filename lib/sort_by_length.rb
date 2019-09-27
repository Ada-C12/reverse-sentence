# A method which will return an array of the words in the string
# sorted by the length of the word.
# Time complexity: O(n2)
# Space complexity: O(n)

def sort_by_length(my_sentence)
  #Step_1: break the sentence into an array of words
  my_array = my_sentence.split(/\W+/)
  #Step_2: compare the words and sort the array
  i = 0
  while i < my_array.length-1
    j = 0
    while j < my_array.length-i-1
      if my_array[j].length > my_array[j+1].length
        temp = my_array[j]
        my_array[j] = my_array[j+1]
        my_array[j+1] = temp
      end
      j += 1
    end
    i += 1
  end
  return my_array
end