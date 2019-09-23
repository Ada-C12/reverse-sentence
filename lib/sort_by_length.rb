# A method which will return an array of the words in the string
#  sorted by the length of the word.
# Time complexity: O(n^2)
# Space complexity: O(n)
def sort_by_length(my_sentence)
  words = my_sentence.split(%r{\s+})
  sorted_words = []
  until words.length == 0
    smallest_word = words.min_by { |w| w.length }
    sorted_words.push(smallest_word)
    words.delete(smallest_word)
  end

  return sorted_words
end
