# A method which will return an array of the words in the string
#  sorted by the length of the word.
# Time complexity: n^2
# Space complexity: O(n)
def sort_by_length(my_sentence)
  return nil if my_sentence.nil?
  
  my_sorted_array = []
  my_array = my_sentence.split
  
  until my_array.length == 0 do
    current_word = my_array[0]
    my_array.each do |word|
      if word.length  < current_word.length
        current_word = word
      end
    end
    my_sorted_array.push(current_word)
    my_array.delete(current_word)
  end
  return my_sorted_array
end