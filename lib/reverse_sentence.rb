# A method to reverse the words in a sentence, in place.
# Time complexity: O(n) - linear complexity, will scale according to the growth of the array length
# Space complexity: O(n) - linear complexity, an array is being created
def reverse_sentence(my_sentence)
  return my_sentence if my_sentence.nil? || my_sentence.length <= 1
  
  sentence = my_sentence.split(/(\S+|\s{2,})/)
  
  left = 0
  right = sentence.length - 1
  
  while left < right
    temp = sentence[left]
    sentence[left] = sentence[right]
    sentence[right] = temp
    
    left += 1
    right -= 1
  end

  sentence = sentence.join
  
  index = 0
  
  while index < sentence.length
    sentence[index].each_char do |char|
      my_sentence[index] = char
      index +=1
    end
  end
  return my_sentence
end
