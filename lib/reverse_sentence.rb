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
  front_index = 0
  back_index = length - 1
  num_swap = length / 2
  num_swap.times do
    my_sentence[front_index], my_sentence[back_index] = my_sentence[back_index], my_sentence[front_index]
    front_index += 1
    back_index -= 1
  end
  p my_sentence
  head_index = 0
  tail_index = 1
  while tail_index < length
    if my_sentence[head_index] == " "
      head_index += 1
      tail_index += 1
    elsif my_sentence[head_index]!= " " && my_sentence[tail_index] != " " && tail_index < (length - 1)
      tail_index += 1
    elsif my_sentence[head_index] != " " && my_sentence[tail_index] == " " && (tail_index - head_index) == 1
      head_index += 1
      tail_index += 1
    elsif my_sentence[head_index]!= " " && my_sentence[tail_index] != " " && tail_index == (length - 1)
      inside_length = tail_index - head_index + 1
      front_index = head_index
      back_index = tail_index
      (inside_length / 2).times do
        my_sentence[front_index], my_sentence[back_index] = my_sentence[back_index], my_sentence[front_index]
        front_index += 1
        back_index -= 1
      end
      tail_index += 1
    elsif (my_sentence[head_index] != " " && my_sentence[tail_index] == " " && (tail_index - head_index) > 1)
      inside_length = tail_index - head_index + 1
      front_index = head_index
      back_index = tail_index - 1
      (inside_length / 2).times do
        my_sentence[front_index], my_sentence[back_index] = my_sentence[back_index], my_sentence[front_index]
        front_index += 1
        back_index -= 1
      end
      head_index = tail_index
      tail_index += 1
    end
  end
  return my_sentence
end
