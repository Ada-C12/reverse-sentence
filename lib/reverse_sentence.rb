# A method to reverse the words in a sentence, in place.
# Time complexity: O(n) where n is the number of characters in the sentence. This is because it is essentially multiplying
# the number of characters in each word by 1 --> for each word, reverse each character in that word. So, it ends up being (1 * number of characters in word 1) + (1 * number of characters in word 2) etc. for each word,
# which simplifies to adding together the number of characters in each word, which is essentailly O(n)
# Space complexity: O(1)
def reverse_sentence(my_sentence)
  if my_sentence == nil
    return my_sentence
  end
  
  length = my_sentence.length
  (length / 2).times do |i|
    my_sentence[i], my_sentence[length - 1 - i] = my_sentence[length - 1 - i], my_sentence[i]
  end
  
  prev_char = nil
  next_char = my_sentence[1]
  word_break_indexes = []
  word_start_indexes = []
  if my_sentence[0] != " "
    word_start_indexes << 0
  end
  
  my_sentence.each_char.with_index do |char, index|
    if char == " " && prev_char != " "
      unless prev_char == nil
        word_break_indexes << index
      end
    end
    
    if char == " " && next_char != " "
      unless next_char == nil
        word_start_indexes << index
      end
    end
    prev_char = char
    next_char = my_sentence[index + 2]
  end
  
  if my_sentence[length - 1] != " "
    word_break_indexes << length
  end
  
  x = 0
  word_break_indexes.each do |index|
    if x == 0
      if my_sentence[0] == " "
        ((index - word_start_indexes[0]) / 2).times do |i|
          my_sentence[word_start_indexes[0] + 1 + i], my_sentence[index - 1 - i] = my_sentence[index - 1 - i], my_sentence[word_start_indexes[0] + 1 + i]
        end
      else
        (index / 2).times do |i|
          my_sentence[i], my_sentence[index - 1 - i] = my_sentence[index - 1 - i], my_sentence[i]
        end
      end
    else
      ((index - word_start_indexes[x] - 1) / 2).times do |i|
        my_sentence[word_start_indexes[x] + 1 + i], my_sentence[index - 1 - i] = my_sentence[index - 1 - i], my_sentence[word_start_indexes[x] + 1 + i]
      end
    end
    x += 1
  end
  
  return my_sentence
  
end
