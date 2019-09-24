# A method which will return an array of the words in the string
#  sorted by the length of the word.
# Time complexity: O(n^2)
# Space complexity: O(n)
# I think this is an insertion sort (or that's what I wanted it to be haha) - is that true?
def sort_by_length(my_sentence)
  sorted_array = my_sentence.split(" ")
  sorted_array.each_with_index do |word, index|
    if index > 0
      index.times do |i|
        prev_word = sorted_array[index - (i + 1)]
        if word.length < prev_word.length
          sorted_array[index] = prev_word
          sorted_array[index - (i + 1)] = word
        end
      end
    end
  end
  return sorted_array
end
