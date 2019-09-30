# A method to reverse the words in a sentence, in place.
# Time complexity: O(n^2)
# Space complexity: O(1)
def reverse_sentence(my_sentence)
  return nil if my_sentence == nil
  
  len = my_sentence.length
  
  (len / 2).times do |i|
    temp = my_sentence[len - i - 1]
    my_sentence[len - i - 1] = my_sentence[i]
    my_sentence[i] = temp
  end
  
  first_index = 0
  
  len.times do |j|
    if my_sentence[j + 1] == " " || j == len - 1
      ((j - first_index + 1) / 2).times do |k|
        temp = my_sentence[j - k]
        my_sentence[j - k] = my_sentence[first_index + k]
        my_sentence[first_index + k] = temp
      end
      
      first_index = j + 2
    end
  end
  
  return my_sentence
end
