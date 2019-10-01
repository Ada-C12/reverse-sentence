
# A method to reverse the words in a sentence, in place.
# Time complexity: O(n) because the algorithm becuase the time complexity will change as the size of the input changes
# Space complexity: O(1) because the same number of variables will be made regardless of input size
def reverse_sentence(my_sentence)

  return my_sentence if my_sentence == nil 

  counter = 0 
  word_length = 0
  index = 0

  word_start = 0 
  # needs to be an outer loop that iterates thru the sentence
  while counter < my_sentence.length

    word_length = 0 

    while my_sentence[counter] != " " && counter < my_sentence.length
      # whatever index is when the loop exits, is where the word ends
      word_length += 1
      counter += 1
    end 
    
    word_end = counter - 1

    while my_sentence[counter] == " "
      counter += 1
    end 
  
    # this is going to swap each letter in each word 
    word_reverse(my_sentence, word_start, word_end)

    word_start = counter
  end 

  i = 0

  until i == my_sentence.length/2
    temp = my_sentence[i] 
    my_sentence[i] = my_sentence[my_sentence.length - i - 1]
    my_sentence[my_sentence.length - i - 1] = temp
    i += 1
  end 

  return my_sentence

end

def word_reverse(my_sentence, word_start, word_end)
 word_length = word_end - word_start + 1
  
 counter = 0

  while counter != word_length/2
    temp = my_sentence[word_start]
    my_sentence[word_start] = my_sentence[word_end]
    my_sentence[word_end] = temp

    word_start += 1
    word_end -= 1
    counter += 1
  end
end 



