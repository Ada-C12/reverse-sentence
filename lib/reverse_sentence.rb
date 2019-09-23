# A method to reverse the words in a sentence, in place.
# Time complexity: O(n) The program has to run through n thrice--the first time to calculate the length of the string, the second time to reverse all of the characters, and the third time to re-reverse (correct) each individual word. The constant '3' drops away.
# Space complexity: O(1) Because the string is modifying in place, it doesn't take up additional space.
def reverse_sentence(my_sentence)
  # edge cases
  if my_sentence == ""
    return ""
  elsif my_sentence == nil
    return nil
  end

  # first reverse all characters
  length = my_sentence.length
  switcheroo(my_sentence, 0, length-1)

  # now go back and switch back individual words
  front_index = 0
  back_index = 1

  while back_index <= length
    if my_sentence[back_index] != nil && my_sentence[back_index] == " "
      switcheroo(my_sentence, front_index, back_index)
      front_index = back_index
    end
    back_index += 1
  end
end

def switcheroo(string, front_index, back_index)
  length = back_index - front_index + 1
  num_swap = length / 2
  num_swap.times do
    string[front_index], string[back_index] = string[back_index], string[front_index]
    front_index += 1
    back_index -= 1
  end
  return string
end
