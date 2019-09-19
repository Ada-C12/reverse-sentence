# A method to reverse the words in a sentence, in place.
# Time complexity: O(n2)
# Space complexity: O(1)
require 'pry'
def reverse_sentence(my_sentence)
  # raise NotImplementedError
  return nil if my_sentence.nil?
  i = 0
  j = my_sentence.length - 1
  until i >= j
    temp = my_sentence[i]
    my_sentence[i] = my_sentence[j]
    my_sentence[j] = temp 
    i += 1
    j -= 1
  end
  m = 0
  start_index = m
  while m < my_sentence.length 
    # binding.pry
    if my_sentence[start_index] != " " && my_sentence[m] == " " 
      my_sentence[start_index..m-1] = reverse_helper(my_sentence[start_index..m-1])
      start_index = m
    elsif my_sentence[start_index] != " " && m == my_sentence.length - 1
      my_sentence[start_index..m] = reverse_helper(my_sentence[start_index..m])
    elsif my_sentence[start_index] == " " && my_sentence[m] != " "
      start_index = m
    end
    m += 1
  end
  return my_sentence
end

def reverse_helper(my_sentence)
  i = 0
  j = my_sentence.length - 1
  until i >= j
    temp = my_sentence[i]
    my_sentence[i] = my_sentence[j]
    my_sentence[j] = temp 
    i += 1
    j -= 1
  end
  return my_sentence
end