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
  
  # word_in_order_array has each word flipped back in place, now to replace the characters of my_sentence
  x = 0
  z = 0
  my_sentence.each_char do |char|
    if char == word_in_order_array[x][z]
      my_sentence.insert(x, word_in_order_array[x])
      x += 1 
    else
      
    end
    # my_sentence is what i need to work with
    # third_array.each do |word|
    #   length = word.length
    #   first_char = word[0]
    #   last_char = word[length-1]
    #   raise NotImplementedError
    # end
    
    
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
    
    reverse_sentence("hi natalie")