# A method to reverse the words in a sentence, in place.
# Time complexity: ?
# Space complexity: ?
require 'pry'
def reverse_sentence(my_sentence)
  if my_sentence == ""
    return ""
  elsif my_sentence == nil
    return nil
  end
  
  my_sentence = my_sentence.split(' ')
  length = my_sentence.length
  second_array = []
  
  length.times do  |i|
    second_array[i] = my_sentence[length-1 - i]
  end
  
  length.times do |i|
    my_sentence[i] = second_array[i]
  end
  
  # my_sentence = array.join(" ")
  my_sentence = my_sentence.join(" ")
  return my_sentence
  
  raise NotImplementedError, "Method not implemented"
end

