# A method which will return an array of the words in the string
#  sorted by the length of the word.
# Time complexity: O(N^2)
# Space complexity: O(N)
def sort_by_length(my_sentence)
  sentence_array = my_sentence.split(" ")
  return bubble_sort(sentence_array, sentence_array.length)
end

# cite: https://github.com/Ada-Developers-Academy/textbook-curriculum/blob/master/04-cs-fundamentals/classroom/Sorting.md
def bubble_sort(array, length)
  i = 0
  while i < length-1 # outer loop
    j = 0
    while j < length-i-1 # inner loop
      if array[j].length > array[j+1].length # swap if length of word is greater than other
        temp = array[j]
        array[j] = array[j+1]
        array[j+1] = temp
      end
      j += 1
    end
    i += 1
  end
end
