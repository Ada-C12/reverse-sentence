# A method to reverse the words in a sentence, in place.
# Time complexity: ?
# Space complexity: ?
def reverse_sentence(my_sentence)
  i = 0
  j = my_sentence.length - 1
  
  while i < (my_sentence.length / 2)
    temp_a = my_sentence[i]
    temp_b = my_sentence[j]
    
    my_sentence[i] = temp_b
    my_sentence[j] = temp_a
    
    i += 1 
    j -= 1
  end
  
  x = 0
  word_start = 0
  word_end = 0
  in_word = true
  
  while x < my_sentence.length
    if (my_sentence[x] == " " || x == (my_sentence.length - 1) )&& in_word == true
      if my_sentence[x] == " "
        word_end = x - 1
      elsif x == (my_sentence.length - 1)
        word_end = x
      end
      
      word_length = (word_end - word_start + 1)
      puts word_length
      
      y = word_start
      z = word_end
      count = 0
      
      
      while count < (word_length / 2)
        temp_char_one = my_sentence[y]
        temp_char_two = my_sentence[z]
        
        my_sentence[y] = temp_char_two
        my_sentence[z] = temp_char_one
        
        y += 1
        z -= 1
        count += 1
      end
      
      in_word = false
    end
    
    if my_sentence[x] != " " && in_word == false
      word_start = x
      in_word = true
    end
    
    x += 1
  end
  
  
  # until my_sentence[i] == " "
  #   i += 1
  # end
  # first_word = my_sentence[0, i]
  
  
  # j = my_sentence.length - 1
  # until my_sentence[j] == " "
  #   j -= 1
  # end
  # last_word = my_sentence[j + 1, my_sentence.length - 1]
  
  # my_sentence.insert(0, my_sentence[j + 1, my_sentence.length - 1])
  # my_sentence.delete!("better")
  
  puts word_start
  puts word_end
  
  return my_sentence
end

puts reverse_sentence("I'm an   animal")



# words = []
# start = 0

# while i < my_sentence.length
#   if my_sentence[i] == " " || i == my_sentence.length - 1
#     finish = i
#     words << my_sentence[start, finish]
#     start = i
#   end

#   i += 1

# end