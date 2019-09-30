# A method to reverse the words in a sentence, in place.
# Time complexity: ?
# Space complexity: ?
require 'pry'


def reverse_sentence(my_sentence)
  reverse_array = []
  words = my_sentence.split(" ")
  words.length.times do |index|    
    last_index = words.length - 1 - index
    reverse_array << words[last_index]
  end
  # binding.pry
  return reverse_array.join(" ")
end
