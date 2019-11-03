# A method to reverse the words in a sentence, in place.	
# Time complexity: O(n^3)	
# Space complexity: O(1)
def reverse_sentence(my_sentence)
  if my_sentence == nil
    return nil
  end
  my_sentence = string_reverse(my_sentence)
  my_sentence = word_reverse(my_sentence)
  return my_sentence
end

def string_reverse(string)
  i = 0
  j = string.length - 1
  temp_i = ""
  temp_j = ""
  while i < j do
    temp_i = string[i]
    temp_j = string[j]
    string[i] = temp_j
    string[j] = temp_i
    i+=1
    j-=1
  end
  return string
end

def word_reverse(string)
  i = 0
  j = 0
  length = string.length
  while i < length
    while string[j] != " " && j < length do
      j += 1
    end
    j -= 1
    word_start = i
    word_end = j
    while word_start < word_end do
      temp_i = string[word_start]
      temp_j = string[word_end]
      string[word_start] = temp_j
      string[word_end] = temp_i
      word_start+=1
      word_end-=1
    end
    i = j+2
    j = i
  end
  return string
end
