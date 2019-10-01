# A method to reverse the words in a sentence, in place.
# Time complexity: O(n) because the amount of time it will take will increase as the length of the input increases.
# Space complexity: O(n) because the space increases as the inout increases.
def reverse_sentence(my_sentence)
  words = my_sentence.split(" ")
  length = words.length
  
  mid = (length)/2
  i = 0
  k = 1
  while i < mid do 
    j = words[length-k]
    words[length-k] = words[i] 
    words[i] = j
    i += 1
    k += 1
  end
  
  if i == mid 
    my_sentence = words.join(", ")
    return my_sentence
  end
end
