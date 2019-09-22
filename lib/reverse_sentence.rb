# A method to reverse the words in a sentence, in place.
# Time complexity: O(n)
# Space complexity: O(n)
def reverse_sentence(my_sentence)
  if my_sentence.nil?
    return nil
  end
  
  word_array = my_sentence.split(/\.?\s+/)
  
  i = 0
  end_position = word_array.length - 1
  
  while i <= end_position
    temp = word_array[i]
    word_array[i] = word_array[end_position]
    word_array[end_position] = temp
    i += 1
    end_position -= 1 
  end 
  
  result = word_array.join(' ')
  word_array.join(' ').length.times do |x|
    my_sentence[x] = result[x]
  end
  
  return my_sentence
end
