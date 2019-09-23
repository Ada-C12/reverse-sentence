# A method to reverse the words in a sentence, in place.
# Time complexity: O(n) because I reverse entire string which has O((1/2)*n) time complexity and then
# I iterate through string once again to reverse each word, this costs O(n) for iteration + O((1/2)*n) for reversing
# each word. Total time complexity O( (1/2)*n + n + (1/2)*n ) which is O(n)
# Space complexity: O(1) because I reverse string and its words in place

def reverse_string(string, start_index, end_index)
  raise ArgumentError if !string 
  if string
    length = end_index - start_index 
    (length / 2).times do |index|
      temp_character = string[index + start_index]
      string[index + start_index] = string[end_index - index - 1]
      string[end_index - index - 1] = temp_character
    end
  end
end

def reverse_sentence(my_sentence)
  if my_sentence && my_sentence.length > 0
    length = my_sentence.length() 
    reverse_string(my_sentence, 0, length)
    
    current = 0
    while current < length
      while my_sentence[current] != nil && my_sentence[current] == " "
        current += 1
      end  
      start_index = current
      
      while  my_sentence[current] != nil && my_sentence[current] != " "
        current += 1
      end
      end_index = current

      reverse_string(my_sentence, start_index, end_index)    
    end
  end
  return my_sentence
end
