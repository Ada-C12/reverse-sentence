# A method to reverse the words in a sentence, in place.
# Time complexity: The time complexity of this method is O(nm) where n is the length of my_sentence and m is the length of a word in my_sentence. The first while loop has a time complexity of O(1/2n) where n is the length of my_sentence. The second while loop has a time complexity of O(n)where n is the length of my_sentence and a nested while loop with a time complexity of (1/2m) where m is the length of the word within the sentence. So the total time complexity is O(3/2n * 1/2m) or O(nm).

# Space complexity: The space complexity of this method is O(1) because the space that the variables take up stays constant regardless of the lengthe of the string.

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
