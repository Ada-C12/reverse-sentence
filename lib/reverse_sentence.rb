# A method to reverse the words in a sentence, in place.
# Time complexity: O(n)
# Space complexity: O(n)
# Not pleased with how regex captures the whitespaces and think that it creates unneccesary iteration for the program to run. I couldn't figure a better one out though.

def reverse_sentence(my_sentence)
  if my_sentence == nil 
    return nil 
  end 

  my_sentence_array = my_sentence.split(/(\S+|\s{1,})/)
  length = my_sentence_array.length
  index = 0 
  temp = 0

  while index < length / 2
    temp = my_sentence_array[index] 
    my_sentence_array[index] = my_sentence_array[length - index - 1]
    my_sentence_array[length - index - 1] = temp 
    index += 1
  end 

  reversed_sentence = my_sentence_array.join('')
  my_sentence[0..my_sentence.length] = reversed_sentence

end

