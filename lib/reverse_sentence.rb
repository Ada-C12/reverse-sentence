# A method to reverse the words in a sentence, in place.
# Time complexity: ?
# Space complexity: ?
def reverse_sentence(my_sentence)
  if my_sentence == nil
    return nil
  end
  
  swappy_sentence = swap_em(my_sentence)
  
  word_start = 0
  word_end = 0
  length = swappy_sentence.length
  reversed = false
  
  while word_end <= length
    if swappy_sentence[word_end + 1] == nil && reversed == false
      swappy_sentence[word_start..word_end] = swap_em(swappy_sentence[word_start..word_end])
      return swappy_sentence
    end
    
    if swappy_sentence[word_end+1] != " " && reversed == false
      word_end = word_end + 1
    elsif swappy_sentence[word_end+1] == " " && reversed == false
      swappy_sentence[word_start..word_end] = swap_em(swappy_sentence[word_start..word_end])
      reversed = true
      word_end = word_end + 1
    elsif swappy_sentence[word_end+1] == " " && reversed == true
      word_end = word_end + 1
    elsif swappy_sentence[word_end+1] != " " && reversed == true
      word_end = word_end + 1
      word_start = word_end
      reversed = false
    end
  end 
end

# Helper method - reverses the string: O(n) time; O(1) space
def swap_em(sentence)
  low = 0
  high = sentence.length - 1
  
  while low < high
    temp = sentence[high]
    sentence[high] = sentence[low]
    sentence[low] = temp
    low = low + 1
    high = high - 1
  end
  return sentence
end
