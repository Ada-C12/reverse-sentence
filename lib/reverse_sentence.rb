# A method to reverse the words in a sentence, in place.
# Time complexity: O(n) - my method does not have any nested loops, but it will run through the length of the original string multiple times
# Space complexity: O(n) - a second variable (reverse) needs to be created, which will take up as much space as the original string
def reverse_sentence(my_sentence)
  if my_sentence != nil
    # Creates array of words and spaces
    words_array = words(my_sentence)

    # Revereses the order of the words
    length = words_array.length
    i = 0
    j = length - 1
    (length / 2).times do
      # selects word at smallest index that has not been swapped
      word_1 = words_array[i]
      # selects words at largest index that has not been swapped
      word_2 = words_array[j]
    
      words_array[i] = word_2
      words_array[j] = word_1
    
      i += 1
      j -= 1
    end
    
    reverse = words_array.join

    # Overrides original string with order of characters in reverse
    i = 0
    my_sentence.length.times do
      my_sentence[i] = reverse[i]
      i += 1
    end
  end

  return my_sentence
end

# Helper method to convert sentence into array of words - O(n) time complexity
def words(my_sentence)
  length = my_sentence.length
  words_array = []
  i = 0
  word = ""

  until i == length
    l = my_sentence[i]
    j = my_sentence[i + 1]
  
    if l != " " && j != " "
      word += l
    elsif l != " " && j == " "
      word += l
      words_array << word
      word = ""
    elsif l == " " && j == " "
      word += l
    elsif l == " " && j != " "
      word += l
      words_array << word
      word = ""
    end
  
    if i == length - 1
      words_array << word
    end

    i += 1
  end

  return words_array
end
