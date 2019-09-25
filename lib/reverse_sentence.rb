# A method to reverse the words in a sentence, in place.
# Time complexity: O(n)
# Space complexity: O(1)

def reverse_sentence(my_sentence)
  
  if my_sentence == ""
    return ""
  elsif my_sentence == nil
    return nil
  end
  # regex credit goes to Amal
  reverse = my_sentence.scan(/(\s*)(\w*'*\w+[!,.?]*)(\s*)/).flatten
  i = 0
  j = reverse.length - 1
  
  (reverse.length / 2).times do 
    temp = reverse[i]
    reverse[i] = reverse[j]
    reverse[j] = temp
    i += 1
    j -= 1
  end
  my_sentence = reverse.join
  return my_sentence
  
  
end
