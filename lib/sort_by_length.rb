# A method which will return an array of the words in the string
#  sorted by the length of the word.
# Time complexity: O(n), the first `while` loop runs 'n' times, where 'n' is the length of `my_sentence`. The second `while` loop that contains the bubble sort runs 'n' times where 'n' is the length of the `full_words` array. This is maybe O(2n), or O(m + n), but since we ignore the constants it turns into O(n).
# Space complexity: O(n), where 'n' is the length of `my_sentence`, even though one array is being made it's not significant enough to increase the space complexity. 

def sort_by_length(my_sentence)
  length = my_sentence.length - 1
  full_words = []
  letter_index = 0
  if !my_sentence.nil?
    # runs `n` times
    while letter_index <= length
      word = ""
      while my_sentence[letter_index] != " " && letter_index <= length
        word += my_sentence[letter_index]
        letter_index += 1
      end
      # adds a full word to `full_words` array
      if word != " " && word != ""
        full_words << word
      end
      letter_index += 1
    end
  end
  i = 0

  while i < (full_words.length - 1)
    # bubble sort
    if full_words[i].length > full_words[i + 1].length
      temp = full_words[i]
      full_words[i] = full_words[i + 1]
      full_words[i + 1] = temp
    end
    i += 1
  end
  return full_words
end
