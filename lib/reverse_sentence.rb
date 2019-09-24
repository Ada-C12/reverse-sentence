# A method to reverse the words in a sentence, in place.
# Time complexity: O(n) - the n is because the number of times the loop runs is dependant on the length of my_sentence.
# Space complexity: O(1) - no additional memory/space is used. The variable, my_sentence, starts as a string, then transform to an array, the loop runs (or doesn't if nil) and the variable changed back to a string per the .join method.
def reverse_sentence(my_sentence)

  if my_sentence.nil?
    return nil
  else
    word_array = my_sentence.split(/\s/)
    i = 0
    last = -1
    (word_array.length/2).times do |i|
      temp = word_array[i]
      word_array[i] = word_array[last]
      word_array[last] = temp
      last -= 1
    end
  end
  new_string = word_array.join(" ")

  my_sentence.length.times do |i|
    my_sentence[i] = new_string[i]
  end
  return my_sentence
end


my_sentence = "How  do  you   like     them      apples?"
reverse_sentence(my_sentence)
p my_sentence