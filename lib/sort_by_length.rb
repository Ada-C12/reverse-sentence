# A method which will return an array of the words in the string
#  sorted by the length of the word.
# Time complexity: O(n^2) as there are two loops that depend on the size of the elements.
# Space complexity: O(n)
def sort_by_length(my_sentence)
    my_sentence = my_sentence.split(" ")
    i = 1
    while i < my_sentence.length
      to_insert = my_sentence[i]
      j = i
      while j > 0 && my_sentence[j-1].length > to_insert.length
        my_sentence[j] = my_sentence[j-1]
        my_sentence[j-1] = to_insert
        j -= 1
      end
      i += 1
    end
    return my_sentence
end
