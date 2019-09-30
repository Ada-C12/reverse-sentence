require 'pry'
# A method to reverse the words in a sentence, in place.
# Time complexity: ?
# Space complexity: ?
def reverse_sentence(my_sentence)
  if my_sentence == nil
    return nil
  end
  
  #Take in string and convert to array of words with spaces perseved
  sentence_array = my_sentence.split(/[\s]/)
  
  #Iterate through array swapping each words
  i = 0
  j = sentence_array.length - 1
  while i < j
    temp_index = sentence_array[i]
    sentence_array[i] = sentence_array[j]
    sentence_array[j] = temp_index
    
    i += 1
    j -= 1
  end
  
  #Concatente elements of array into a new string output using (.join)
  new_sentence = sentence_array.join(' ')

  #iterate through new string and replace each character into parameter, my_sentence
  new_sentence.length.times do |i|
    my_sentence[i] = new_sentence[i]
  end
  
  return my_sentence
end
