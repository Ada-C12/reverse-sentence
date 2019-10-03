# A method to reverse the words in a sentence, in place.
# Time complexity: O(n^2) where n is the length of string
# Space complexity: O(n) where n is the length of string

def reverse_sentence(my_sentence)
  if my_sentence == nil
    return nil
  end
  
  char_count = 0
  position_count = my_sentence.length + 1
  
  while char_count < my_sentence.length
    if my_sentence[0] != " "
      my_sentence.insert(position_count - 1, my_sentence[0])
      my_sentence[0] = ""
      char_count += 1
    else
      position_count = my_sentence.length-char_count
      my_sentence.insert(position_count, " ")
      my_sentence[0] = ""
      char_count += 1
    end
  end
  
  return my_sentence
end