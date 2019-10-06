# A method which will return an array of the words in the string
#  sorted by the length of the word.
# Time complexity: O(n^2) where n is the length of the array where the array consists of the words in the sentence as the elements of the array.
# Space complexity: O(n) because a new array is created from the words that make up the sentence string.
def sort_by_length(my_sentence)
  if my_sentence.length == nil
    return []
  end
  
  # split string sentence into array (took this from my Exercism assignment)
  my_sentence = my_sentence.split(/[^\w']+/)
  
  # iterate through my_sentence array
  # if word.length at index > word.length at index+1
  # swap words
  # else keep words in place
  # iterate to next word
  # end
  
  i = 0
  while i < (my_sentence.length - 1)
    j = 0
    while j < my_sentence.length - i - 1
      if (my_sentence[j].length) > (my_sentence[j+1]).length
        temp = my_sentence[j]
        my_sentence[j] = my_sentence[j+1]
        my_sentence[j+1] = temp
      end
      j += 1
    end
    i += 1
  end
  
  return my_sentence
end
