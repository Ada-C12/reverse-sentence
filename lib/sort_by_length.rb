# A method which will return an array of the words in the string
#  sorted by the length of the word.
# Time complexity: O(n^2) n is the split_sentence array which gets iterated over until there are no more elements left
# Space complexity: O(n) n is for the empty sorted array which takes up additional space
def sort_by_length(my_sentence)
  sorted = []
  split_sentence = my_sentence.split(" ")
  while !split_sentence.empty?
    sorted << split_sentence.delete(split_sentence.min { |a, b| a.length <=> b.length }) #push the word with the min value into sorted then delete it
  end
  return sorted
end
