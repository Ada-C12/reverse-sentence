# A method which will return an array of the words in the string
#  sorted by the length of the word.
# Time complexity: O(n^2)
# Space complexity: O(n)
def sort_by_length(my_sentence)
  word_array = my_sentence.split(" ")
  i = 1
  while i < word_array.length
    to_insert = word_array[i]
    j = i
    while j > 0 && word_array[j-1].length > to_insert.length
      word_array[j] = word_array[j-1]
      j -= 1
    end
    word_array[j] = to_insert
    i += 1
  end
  return word_array
  
end

# my_sentence = ["dyson", "neutron", "star"]
# p sort_by_length(my_sentence)