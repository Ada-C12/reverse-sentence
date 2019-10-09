# A method which will return an array of the words in the string
#  sorted by the length of the word.
# Time complexity: This is an insertion sort with two loops, so time complexity is O(n^2) / quadratic
# Space complexity: O(1) / constant

def sort_by_length(my_sentence)
  # split sentence into array of strings
  my_sentence_words = my_sentence.split(" ") 
  array_length = my_sentence_words.length
  i = 1
  # set condition for outer loop to run
  while i < array_length
    # declare value for word to be considered 
    to_insert = my_sentence_words[i] 
    j = i # j = 4
    # set conditions for inner loop to run
    while j > 0 && my_sentence_words[j-1].length > to_insert.length 
      # if conditions evaluate true, move word at [j] down one position
      my_sentence_words[j] = my_sentence_words[j-1] 
      # decrement counter for inner loop
      j -= 1 
    end
    # not 100 percent sure what this variable is doing but I know it's necessary
    my_sentence_words[j] = to_insert 
    # increment counter for outer loop
    i += 1 
  end
  return my_sentence_words
end

