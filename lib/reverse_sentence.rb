# A method to reverse the words in a sentence, in place.

# Time complexity: O(n^2) Where n is the length of the string, my_sentence. We iterate through the entire sentence but when a "word" is reached we iterate through that word, swapping each letter.
# Space complexity: O(1) because nothing new is created, everything is swapped/reversed in place.

def reverse_sentence(my_sentence)
  if my_sentence == nil
    return nil
  end
  
  # #Take in string and convert to array of words with spaces perseved
  # sentence_array = my_sentence.split(/\s/)
  
  # #Iterate through array swapping each words
  # i = 0
  # j = sentence_array.length - 1
  # while i < j
  #   temp_index = sentence_array[i]
  #   sentence_array[i] = sentence_array[j]
  #   sentence_array[j] = temp_index
    
  #   i += 1
  #   j -= 1
  # end
  
  # #Concatente elements of array into a new string output using (.join)
  # new_sentence = sentence_array.join(' ')

  # #iterate through new string and replace each character into parameter, my_sentence
  # new_sentence.length.times do |i|
  #   my_sentence[i] = new_sentence[i]
  # end
  
  # return my_sentence

  ############ Second Try at Problem #############

  # Step 1 - Reverse sentence in its entirity
  # Create helper method to do this
  def reverse(string)
    start_point = 0
    end_point = string.length - 1
    while start_point < end_point
      temp = string[start_point]
      string[start_point] = string[end_point]
      string[end_point] = temp
      start_point += 1
      end_point -= 1
    end
    return string
  end

  # Pass in my_sentence into Step 1 helper method
  reverse(my_sentence)

  # Step 2 Identify 'words' in sentence
  # Identify start and end positions of each word
  i = 0
  start_point = 0
  while i < my_sentence.length
    if my_sentence[i] == " "
      end_point = i - 1

      while start_point < end_point
        temp = my_sentence[start_point]
        my_sentence[start_point] = my_sentence[end_point]
        my_sentence[end_point] = temp
        start_point += 1
        end_point -= 1
      end
      start_point = i + 1

    elsif i == my_sentence.length - 1
      end_point = i
      while start_point < end_point
        temp = my_sentence[start_point]
        my_sentence[start_point] = my_sentence[end_point]
        my_sentence[end_point] = temp
        start_point += 1
        end_point -= 1
      end

    end
    i += 1
  end
  return my_sentence
end
