# A method to reverse the words in a sentence, in place.
# Time complexity: ?
# Space complexity: ?
def reverse_sentence(my_sentence)
  if my_sentence == ""
    return ""
  elsif my_sentence == nil
    return nil
  end
  length = my_sentence.length
  swap(my_sentence, length)
  
  head_index = 0
  tail_index = 0
  while tail_index < length
    if my_sentence[head-index] == " "
      head_index += 1
      tail_index += 1
    else until tail_index == " "
      tail_index += 1
    end
    swap(my_sentence.slice(head_index..tail_index), (tail_index - head_index + 1))
  end
  return my_sentence
end

def swap(to_swap, length)
  front_index = 0
  num_swaps = length / 2
  back_index = length - 1
  num_swaps.times do
    to_swap[front_index], to_swap[back_index] = to_swap[back_index], to_swap[front_index]
    front_index += 1
    back_index -= 1
  end
  return to_swap
end

p reverse_sentence("build a snowman")
