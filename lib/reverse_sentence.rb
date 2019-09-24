# A method to reverse the words in a sentence, in place.
# Time complexity: ?
# Space complexity: ?
require 'pry'

def reverse_sentence(my_sentence)
  if my_sentence == ""
    return ""
  elsif my_sentence == nil
    return nil
  end
  
  length = my_sentence.length
  reversaroo(my_sentence, length)
  # first fully reverse the strings
  
  # then know which spots are words and reverse those in place
  split_sentence = my_sentence.split(' ')
  word_in_order_array = []
  split_sentence.each_with_index do |word, i|
    length = word.length
    temp = reversaroo(word, length)
    word_in_order_array.push(temp)
  end
  
  x = 0
  word_in_order_array.each do |word|
    
    word.each_char do |char|
      until my_sentence[x] != " "
        x += 1
      end
      my_sentence[x] = char
      x += 1
      
    end
  end
  # search for any character or whitespace followed immediately by a character
  return my_sentence
end




def reversaroo(string, length)
  j = (length - 1)
  i = 0
  while i < j
    temp = string[i]
    string[i] = string[j] 
    string[j] = temp
    j -= 1
    i += 1
  end
  return string
end

