# A method to reverse the words in a sentence, in place.
# Time complexity: o(n^2)
# Space complexity: o(1)
def reverse_sentence(my_sentence)
  if my_sentence == nil
    return ""
  end

  i = 0
  j = 0
  while j < my_sentence.length
    char = my_sentence[j]
    if char == " "
      reverse(my_sentence, i, j - 1)
      i = j + 1
    end
    j += 1
  end

  reverse(my_sentence, i, my_sentence.length - 1)
  reverse(my_sentence, 0, my_sentence.length - 1)
  
end

def reverse(sentence, i, j)
  while i < j
    temp = sentence[i]
    sentence[i] = sentence[j]
    sentence[j] = temp
    
    i += 1
    j -= 1

  end
end