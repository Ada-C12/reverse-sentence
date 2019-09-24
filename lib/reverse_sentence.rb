# A method to reverse the words in a sentence, in place.
# Time complexity: O(n^2), n == length of my_sentence string
# Space complexity: O(1)
def reverse_sentence(my_sentence)
  if my_sentence == "" || my_sentence == nil 
    return my_sentence 
  end 
  a = 0
  max_index = my_sentence.length - 1
  b = max_index 
  while a < b do 
    temp = my_sentence[a] 
    my_sentence[a] = my_sentence[b]
    my_sentence[b] = temp
    a += 1
    b -=1
  end 
  i = 0
  while i < max_index do  
    if my_sentence[i] == " " 
      i += 1
    else 
      j = i + 1
      while j <= max_index && my_sentence[j] != " " do 
        j += 1
      end 
      word_end_index = j
      j -= 1
      while i < j do 
        temp_i = my_sentence[i]
        my_sentence[i] = my_sentence[j]
        my_sentence[j] = temp_i
        i += 1
        j -= 1
      end 
      i = word_end_index
    end 
  end 
  return my_sentence  
end  

