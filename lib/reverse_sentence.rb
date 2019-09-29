#require "pry"
# A method to reverse the words in a sentence, in place.
# Time complexity: o(n)
# Space complexity: o(1)
def reverse_sentence(my_sentence)
  #raise NotImplementedError
  if my_sentence == nil 
    return my_sentence
  end
  words = my_sentence.split() 
  i = 0
  j = words.length - 1
  
  while i < j do 
    temp = words[i]
    # binding.pry
    words[i] = words[j]
    words[j] = temp
    # binding.pry
    i += 1
    j -= 1
  end 
  # binding.pry
  # print words
   final_word = words.join(" ")
  return final_word
end




