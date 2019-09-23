# A method to reverse the words in a sentence, in place.
# Time complexity: ?
# Space complexity: ?
def reverse_sentence(my_sentence)
  if my_sentence.nil?
    return my_sentence
  end
  
  
  i = 0
  j = (my_sentence.length - 1)
  
  until i == my_sentence.length
    holding = my_sentence[j]
    my_sentence[i] = holding
    i += 1
    j -= 1
  end
  
  return my_sentence
  raise NotImplementedError
end
