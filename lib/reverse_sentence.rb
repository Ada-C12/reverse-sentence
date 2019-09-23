# A method to reverse the words in a sentence, in place.
# Time complexity: O(n^2), the first `while` loop in `reverse_sentence` will run 'n' times, and each time it calls the `insertion_sort` method that method could run 'n' times. 
# Space complexity: O(n), where 'n' is the length of `my_sentence`.


# helper method to shift each element over once place
# I believe this is an insertion sort
def insertion_sort(first_index, my_sentence, last_position, last_character)
  while first_index < last_position
    my_sentence[first_index] = my_sentence[first_index + 1]
    first_index += 1
  end
  my_sentence[last_position] = last_character
end

def reverse_sentence(my_sentence)
  if !my_sentence.nil?
    word_length = 0
    last_position = my_sentence.length - 1
    while word_length < last_position
      if my_sentence[word_length].match(/\s/)
        
        # store space character
        space = my_sentence[word_length]
        
        # insert word at end of string
        current_position = word_length - 1
        while current_position >= 0
          temp = my_sentence[current_position]
          
          insertion_sort(current_position, my_sentence, last_position, temp)
          
          current_position -= 1
          last_position -= 1
        end
        
        # insert space in front of word
        insertion_sort(0, my_sentence, last_position, space)
        
        last_position -= 1
        
        # reset base index
        word_length = 0
        
      else
        # increment base index
        word_length += 1
      end
    end
  else
    return my_sentence
  end
end
