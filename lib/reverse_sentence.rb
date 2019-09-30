# A method to reverse the words in a sentence, in place.
# Time complexity: ?
# Space complexity: ?
def reverse_sentence(my_sentence)
 
  if my_sentence == nil
    return nil
  elsif 
    my_sentence == ""
    return ""
  end

  array = my_sentence.split(/\.?\s+/)
  i = 0
  j = array.length - 1

  (array.length / 2).times do 
    temp = array[i]
    array[i] = array[j]
    array[j] = temp
    i += 1
    j -= 1
  end

  my_sentence = array.join
  return my_sentence
end
