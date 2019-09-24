# A method to reverse the words in a sentence, in place.
# Time complexity: O(n) - the n is because the number of times the loop runs is dependant on the length of my_sentence.
# Space complexity: O(n) - array created by split method. After reversing the words, join method used to make it into a single string again.
def reverse_sentence(my_sentence)

  if my_sentence.nil?
    return nil
  else
    word_array = my_sentence.split(/\s/) # regex not working for test #6
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


# my_sentence = "How  do  you   like     them      apples?"
# reverse_sentence(my_sentence)
# p my_sentence