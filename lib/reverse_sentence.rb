# A method to reverse the words in a sentence, in place.
# Time complexity: O(n)
# Space complexity: O(1)
def reverse_sentence(my_sentence)

  if my_sentence.nil?
    return nil
  else
    my_sentence = my_sentence.split(/\s/)
    i = 0
    last = -1
    (my_sentence.length/2).times do |i|
      temp = my_sentence[i]
      my_sentence[i] = my_sentence[last]
      my_sentence[last] = temp
      last -= 1
    end
  end
  my_sentence = my_sentence.join(" ")
  return my_sentence
end


my_sentence = "How  do  you   like     them      apples?"
p reverse_sentence(my_sentence)