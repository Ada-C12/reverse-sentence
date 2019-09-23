# A method which will return an array of the words in the string
#  sorted by the length of the word.
# Time complexity: O(n^2)
# Space complexity: o(n)
def sort_by_length(my_sentence)
  split_array = my_sentence.split

  (split_array.length - 1).times do |i|
    value = split_array[i + 1]
    j = i + 1

    while j > 0 && split_array[j - 1].length > value.length
      split_array[j] = split_array[j - 1]
      j -= 1
    end
    split_array[j] = value
  end

  return split_array 
end


