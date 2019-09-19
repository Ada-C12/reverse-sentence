# A method which will return an array of the words in the string
#  sorted by the length of the word.
# Time complexity: O(n^2)
# Space complexity: O(n) n is for the empty sorted array
def sort_by_length(my_sentence)
  sorted = []
  split_sentence = my_sentence.split(" ")
  while !split_sentence.empty?
    sorted << split_sentence.delete(split_sentence.min { |a, b| a.length <=> b.length }) #push the word with the min value into sorted then delete it. min is a enum method
  end
  return sorted
end

# if split[i].length > split[i + 1].length
#   temp = split[i]
#   split[i] = split[i + 1]
#   split[i + 1] = temp
# end
