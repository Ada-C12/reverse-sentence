# A method which will return an array of the words in the string
#  sorted by the length of the word.
# Time complexity: O(n^2) - quadratic complexity
# Space complexity: O(1) - constant complexity
def sort_by_length(my_sentence)
  sentence = my_sentence.split
  index = 1
  while index < sentence.length
    value_to_insert = sentence[index]
    current_index = index

    # will iterate until current value is first in the list or the value to the left is less than the right
    while current_index > 0 && sentence[current_index-1].length > value_to_insert.length
      # current index value assigned the larger value to the left
      # reassign greater value
      sentence[current_index] = sentence[current_index - 1]
      # current index moves to the left each loop
      current_index -= 1
    end

    # reassign value_to_insert where current_index ended up(complete the swap)
    sentence[current_index] = value_to_insert
    index += 1
  end
  return sentence
end
