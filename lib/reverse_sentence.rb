# A method to reverse the words in a sentence, in place.
# Time complexity: ?
# Space complexity: ?
def reverse_sentence(my_sentence)
  return nil if my_sentence.nil?
  i = 0
  my_array = my_sentence.split
  length = my_array.length
  
  while i < my_array.length/2 do
    temp = my_array[i]
    my_array[i] = my_array[length - 1 - i]
    my_array[length - 1 - i] = temp
    i += 1
  end
  my_sentence = my_array.join(" ")
  return my_sentence
end

p reverse_sentence("Yoda is awesome!")