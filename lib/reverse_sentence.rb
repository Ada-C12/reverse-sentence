# A method to reverse the words in a sentence, in place.
# Time compleixity: ?
# Space compleixity: ?
def reverse_sentence(my_sentence)
  
  return nil if my_sentence == nil
  
  # reverses all characters in sentence
  i = 0
  j = my_sentence.length - 1
  
  while i < my_sentence.length / 2
    temp_i = my_sentence[i]
    temp_j = my_sentence[j]
    
    my_sentence[i] = temp_j
    my_sentence[j] = temp_i
    
    i += 1 
    j -= 1
  end
  
  
  # reverses any words in the sentence
  i = 0
  word_start = 0
  word_end = 0
  in_word = true
  
  while i < my_sentence.length
    if ( my_sentence[i] == " " || i == my_sentence.length - 1 ) && in_word == true
      
      word_end = i 
      word_end -= 1 if my_sentence[i] == " "
      
      word_length = word_end - word_start + 1
      count = 0
      
      while count < word_length / 2
        temp_start = my_sentence[word_start]
        temp_end = my_sentence[word_end]
        
        my_sentence[word_start] = temp_end
        my_sentence[word_end] = temp_start
        
        word_start += 1
        word_end -= 1
        count += 1
      end
      
      in_word = false
    end
    
    if my_sentence[i] != " " && in_word == false
      word_start = i
      in_word = true
    end
    
    i += 1
  end
  
  return my_sentence
end
