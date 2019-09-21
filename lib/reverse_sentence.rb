# A method to reverse the words in a sentence, in place.
# Time complexity: ?
# Space complexity: ?
require 'pry'

def reverse_sentence(my_sentence)
  low = 0
  high = my_sentence.length - 1
  
  while low < high
    temp = my_sentence[high]
    my_sentence[high] = my_sentence[low]
    my_sentence[low] = temp
    low += 1
    high -= 1
  end
  
  return my_sentence
end

my_sentence = reverse_sentence("I love Primo")

word_start = 0
word_end = -1
reversed = false

my_sentence.each_char do |char|
  if char != " " && reversed == false
    word_end = word_end + 1
  elsif char == " " && reversed == false
    my_sentence[word_start..word_end] = reverse_sentence(my_sentence[word_start..word_end])
    word_end = word_end + 1
    reversed = true
  elsif char == " " && reversed == true
    word_end = word_end + 1
  elsif char != " " && reversed == true
    word_end = word_end + 1
    word_start = word_end
    reversed = false
  end
end



p my_sentence
