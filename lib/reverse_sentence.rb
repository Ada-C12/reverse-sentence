def reverse_sentence_from_start_to_end(my_sentence, start_index, end_index)
  half_width = (end_index - start_index) / 2
  count = (half_width + 1).to_i
  count.times do |i|
    temp = my_sentence[start_index + i]
    my_sentence[start_index + i] = my_sentence[end_index - i] 
    my_sentence[end_index - i] = temp
  end
end

# A method to reverse the words in a sentence, in place.
# Time complexity: O(n**2)
# Space complexity: O(1)
def reverse_sentence(my_sentence)
  if my_sentence.nil?
    return
  end

  reverse_sentence_from_start_to_end(my_sentence, 0, my_sentence.length - 1)

  start_index = nil
  my_sentence.each_char.with_index do |letter, index|
    if letter != " " && start_index.nil?
      start_index = index
    elsif letter == " " && !start_index.nil?
      end_index = index - 1
      reverse_sentence_from_start_to_end(my_sentence, start_index, end_index)
      start_index = nil
    end
  end

  if !start_index.nil?
    reverse_sentence_from_start_to_end(my_sentence, start_index, my_sentence.length - 1)
  end
end

reverse_sentence("Yoda  is   awesome")
