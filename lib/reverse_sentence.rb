# A method to reverse the words in a sentence, in place.
# Time complexity: ?
# Space complexity: ?
def reverse_sentence(my_sentence)
  if my_sentence == ""
    return ""
  elsif my_sentence == nil
    return nil
  end

  array = my_sentence.split(" ")
  length = array.length
  front_index = 0
  back_index = length - 1

  (length/2).times do
    array[front_index], array[back_index] = array[back_index], array[front_index]
    front_index += 1
    back_index -= 1
    p array
  end
p array.join(" ")
  return array.join(" ")
end
