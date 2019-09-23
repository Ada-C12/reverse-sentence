# A method to reverse the words in a sentence, in place.
# Time complexity: O(n^2)
# Space complexity: O(n)
def reverse_sentence(my_sentence)
  if my_sentence == nil
    return nil
  end

  first_word = " "
  last_word = " "
  first_index = 0
  last_index = my_sentence.length - 1
  first_half = ""
  second_half = ""

  while first_index < last_index
    until my_sentence[first_index] == " " || first_index == my_sentence.length
      first_word << my_sentence[first_index]
      first_index += 1
    end

    until my_sentence[last_index] == " " || last_index == -1
      last_word = my_sentence[last_index] << last_word
      last_index -= 1
    end

    if (last_index + last_word.length == first_index)
      first_half << last_word[0..-2]
    elsif (last_index == first_index)
      first_half << last_word[0..-2]
      second_half = first_word << second_half
    else
      first_half << last_word
      second_half = first_word << second_half
    end

    first_word = " "
    last_word = " "
    first_index += 1
    last_index -= 1
  end

  my_sentence.clear
  my_sentence << first_half << second_half
end
