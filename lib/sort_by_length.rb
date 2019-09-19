# A method which will return an array of the words in the string
#  sorted by the length of the word.
# Time complexity: O(n^2) where n is the length of array
# Space complexity: O(n) where n is length of string/array
def sort_by_length(my_sentence)
  # using bubble sort
  sentence_in_array = my_sentence.split(" ")
  i = 0
  while i < sentence_in_array.length-1
    j = 0
    while j < sentence_in_array.length-i-1
      if sentence_in_array[j].length > sentence_in_array[j+1].length
        temp = sentence_in_array[j]
        sentence_in_array[j] = sentence_in_array[j+1]
        sentence_in_array[j+1] = temp
      end
      j += 1
    end
    i += 1
  end
  return sentence_in_array
end
