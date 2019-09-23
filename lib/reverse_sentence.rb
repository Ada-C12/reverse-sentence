require 'pry'
# A method to reverse the words in a sentence, in place.
# Time complexity: ?
# Space complexity: ?
def reverse_sentence(my_sentence)
  #Take in string and convert to array of words with spaces perseved
  sentence_array = my_sentence.split(/[\s$]{1}/)
  # binding.pry
  #Iterate through array swapping words
  i = 0
  j = sentence_array.length - 1
  while i < j
    temp_index = sentence_array[i]
    sentence_array[i] = sentence_array[j]
    sentence_array[j] = temp_index
    
    i += 1
    j -= 1
  end
  
  my_sentence = sentence_array.join(' ')
  binding.pry
  return my_sentence
  #Concatente elements of array into a string output that will be returned (.join)
end
