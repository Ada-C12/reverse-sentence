# A method to reverse the words in a sentence, in place.
# Time complexity: O(n + m) - 
# Reverse_Sentence
#   - 1st while loop: O(.5n) where n is the number of letters
#   - 2nd while loop: O(n) where n is the number of letters
# Reverse
#   - O(m): where m is the number o words
# Space complexity: O(1)

def reverse(text, text_start, text_end)
  i = 0
  ((text_end - text_start)/2).times do
    temp_char = text[text_start + i]
    text[text_start + i] = text[text_end - i - 1]
    text[text_end - i - 1] = temp_char
    i += 1
  end
  return text
end


def reverse_sentence(my_sentence)
  return nil if my_sentence.nil?
  i = 0
  length = my_sentence.length
  
  end_char = length - 1
  while i < my_sentence.length/2 do
    temp = my_sentence[i]
    my_sentence[i] = my_sentence[length - 1 - i]
    my_sentence[length - 1 - i] = temp
    i += 1
  end
  
  letter = 0
  while letter < my_sentence.length do
    while my_sentence[letter] == " "
      letter += 1
    end  
    start_index = letter
    
    while  my_sentence[letter] != " " && letter < my_sentence.length
      letter += 1
    end
    end_index = letter
    
    reverse(my_sentence, start_index, end_index)    
  end
  
  return my_sentence
end

p reverse_sentence("Yoda is awesome!")