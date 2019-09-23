# A method to reverse the words in a sentence, in place.
# Time complexity: O(n) as the time to run through the program will depend on the length of my_sentence
# Space complexity: O(n) because my_sentence will not be taking up any more memory than it currently does. Although I'm not totally sure because I did add a "*" at the end of my_sentence but also removed it. 
def reverse_sentence(my_sentence)
  if my_sentence == nil 
    return my_sentence
  end 

  my_sentence += "*"
  my_sentence = my_sentence.split(/\s+" "+|\s/)
  i = 0
  j = my_sentence.length - 1

  while i < j
    temp = my_sentence[i]
    my_sentence[i] = my_sentence[j]
    my_sentence[j] = temp

    i += 1
    j -= 1
  end
  my_sentence = my_sentence.join(" ").delete("*")
  return my_sentence
end
