# A method to reverse the words in a sentence, in place.
# Time complexity: ?
# Space complexity: ?
def reverse_sentence(my_sentence)
  if my_sentence.nil?
    return my_sentence
  end
  
  
  i = 0
  j = (my_sentence.length - 1)
  punctuation = [',', '.', '!', ':', ';', '?']
  
  # reverses each character
  until i == my_sentence.length
    holding = my_sentence[j]
    my_sentence[i] = holding
    i += 1
    j -= 1
  end
  
  # swap each character of each word back into space
  my_sentence 
  until 
  end
  
  return my_sentence
  raise NotImplementedError
end
