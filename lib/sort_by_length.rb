# A method which will return an array of the words in the string
#  sorted by the length of the word.
# Time complexity: ?
# Space complexity: ?
def sort_by_length(my_sentence)
  # raise NotImplementedError, "Method not implemented"
  
  # if the string is empty, return an empty array
  if my_sentence.nil? || my_sentence.length < 1
    return []
  end
  
  # first, split the string into an array of items in the string.
  strings = my_sentence.split(' ')
  
  strings = bubble_sort(strings)
  
  return strings
end

def bubble_sort(strings)
  # sort the strings by length
  # loop through the array
  # while the current index is less than the length of the array
  char = 0
  while char < (strings.length - 1)
    # loop through the unsorted portion
    # while the current index is less than the length of the unsorted portion
    unsorted_index = 0
    while unsorted_index < (strings.length - char - 1)
      # if the unsorted item is larger than the one that follows it
      if strings[unsorted_index].length > strings[unsorted_index + 1].length
        # swap the two elements
        temp = strings[unsorted_index]
        strings[unsorted_index] = strings[unsorted_index + 1]
        strings[unsorted_index + 1] = temp
      end
      # increment unsorted index
      unsorted_index += 1
    end
    # increment char
    char += 1
  end
  return strings
end


# In this method you will take a string as a parameter.  The method will return an array of words in the string, sorted by length.  Solve the problem without using the ruby `.sort` method.  When words are tied for length, maintain the order they appeared in the original string.


# it "will return an array of words, by length" do
#   expect(sort_by_length("I love Ada")).must_equal ["I", "Ada", "love"]
# end

# it "will return an array of words by length, words that are of equal length will appear in the order they appear" do
#   expect(sort_by_length("words of equal length")).must_equal ["of", "words", "equal", "length"]
# end

# it "will return an array of words by length, words that are of equal length will appear in the order they appear" do
#   expect(sort_by_length("I love great awesome words")).must_equal ["I", "love", "great", "words", "awesome"]
# end