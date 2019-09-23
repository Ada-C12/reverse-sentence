# A method to reverse the words in a sentence, in place.

# Time complexity: O(n^2) - depends on the length of rev_sentence string
# Space complexity: O(1) - doens't create or add any data just rearrenges the string

# require "pry"
def reverse_sentence(my_sentence)
  if my_sentence == nil
    return nil
  end 
  
  rev_sentence = reverse_strings(my_sentence)
  
  first = 0
  last = 0
  i = 0
  
  while i < rev_sentence.length
    while i < rev_sentence.length && rev_sentence[i] == " "
      i += 1
    end
    first = i
    
    while i < rev_sentence.length && rev_sentence[i] != " "
      i += 1
    end
    last = i - 1
    
    while last > first
      temp = rev_sentence[first]
      rev_sentence[first] = rev_sentence[last]
      rev_sentence[last] = temp
      first += 1
      last -=1
    end
  end
  return rev_sentence
end 

# Creating a helper method
def reverse_strings(sentence)
  i = 0
  j = (sentence.length - 1)
  temp = 0
  
  #Loop
  while i <= j
    temp = sentence[j]
    sentence[j] = sentence[i]
    sentence[i] = temp
    i += 1
    j -= 1
  end 
  #binding.pry
  return sentence
end 

#pp reverse_sentence("How  do  you   like     them      apples?")  
