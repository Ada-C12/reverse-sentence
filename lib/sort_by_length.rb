# A method which will return an array of the words in the string
#  sorted by the length of the word.
# Time complexity: O(n^2)
# Space complexity: O(n)
def sort_by_length(my_sentence)
  new_sentence = my_sentence.split(" ") 
  length = new_sentence.length
  i = 0

  (length - 1).times do
    j = new_sentence[i]
    if new_sentence[i].length > new_sentence[i + 1].length
      new_sentence[i] = new_sentence[i + 1]
      new_sentence[i + 1] = j
    end

    i += 1
  end

  return new_sentence
end
