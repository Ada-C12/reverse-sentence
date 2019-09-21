# A method to reverse the words in a sentence, in place.
# Time complexity: O(n). N is the length of the input string.
# Space complexity: O(n) for words array. N is number of characters in the input string.

def reverse_sentence(my_sentence)
  if !my_sentence || my_sentence.empty?
    return my_sentence
  end
  
  sentence_length = my_sentence.length
  words = []
  index = 0
  
  while index < sentence_length
    word = ""
    
    if my_sentence[index] == " "
      until my_sentence[index] != " " || !my_sentence[index]
        word << my_sentence[index]
        index += 1
      end
      words.push(word)
    else
      until my_sentence[index] == " " || !my_sentence[index]
        word << my_sentence[index]
        index += 1
      end
      words.push(word)
    end
  end
  
  word_index = -1
  sentence_index = 0
  
  while sentence_index < sentence_length
    words[word_index].each_char do |char|
      my_sentence[sentence_index] = char
      sentence_index += 1
    end
    word_index -= 1
  end
  
  return my_sentence
end
