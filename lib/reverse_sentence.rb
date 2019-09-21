# A method to reverse the words in a sentence, in place.
# Time complexity: O(n) where n is the number of characters in the string
# Space complexity: O(1)
def reverse_sentence(my_sentence)
  # raise NotImplementedError
  
  # "Yoda am I" => "I am Yoda"
  #   1. "Yoda am I" => "I ma adoY"
  #   2. "I ma adoY" => "I am Yoda"
  
  # exits if list is too short or is nil
  if my_sentence.nil?
    return nil
  elsif my_sentence.length <= 1
    return ""
  end
  
  # reverse entire string
  # start first at beginning of array
  first = 0
  # start last at the end of the array
  last = (my_sentence.length - 1)
  reverse_string(my_sentence, first, last)
  
  # re-reverse each word
  first_letter = nil
  for char in 0...my_sentence.length
    
    # if the char is a letter
    if !!(my_sentence[char] =~ /\S/) && !first_letter
      # hold on to first letter
      first_letter = char
    elsif !(my_sentence[char] =~ /\S/) && first_letter
      # last letter is one before the non-letter charaacter
      last_letter = (char - 1)
    end
    
    # reverse word
    if first_letter && (last_letter || char == my_sentence.length - 1)
      
      if last_letter.nil?
        last_letter = char
      end
      
      if (last_letter - first_letter > 0)        
        reverse_string(my_sentence, first_letter, last_letter)
      end
      
      # reset letters to nil
      first_letter = nil
      last_letter = nil
    end
  end
  
end

def reverse_string(string, first, last) # O(n)
  while first < last
    # swap items
    temp = string[first]
    string[first] = string[last]
    string[last] = temp
    
    # move first and last toward middle
    first += 1
    last -= 1
  end
end
