require "pry"

# A method to reverse the words in a sentence, in place.
# Time complexity: ?
# Space complexity: ?
def reverse_sentence(my_sentence)
  my_sentence_words = my_sentence.split
  i = 0
  j = i - 1
  # loop through elements n/2 times, ignore central element if length is odd
  while i < (my_sentence_words.length) / 2
    # swap the elements at i and j
    my_sentence_words[i], my_sentence_words[j] = my_sentence_words[j], my_sentence_words[i]
    # increment i
    i += 1
    # decrement j
    j -= 1
  end
  reversed_sentence = my_sentence_words.join(" ")
    
  return reversed_sentence
end
