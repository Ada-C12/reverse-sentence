# A method to reverse the words in a sentence, in place.
# Time complexity: O(n + n/2 + n + n/2) = O(n)
  # it basically goes n times with n being how long the 
  # sentence is (in letters)
# Space complexity: O(left and right and regex and reversed words) = O(n)
  # it will need to create a left and right and regex variable each time that 
  # won't change depending on input, but the list of words will increase by n 
  # if n increases (in number of words)
def reverse_sentence(my_sentence)
  return if my_sentence == nil || my_sentence.length <= 1
  # loop through my_sentence, reversing it from last to first
  left = 0
  right = my_sentence.length - 1
  until left == right || right < left
    my_sentence[left], my_sentence[right] = my_sentence[right], my_sentence[left]
    left += 1
    right -= 1
  end

  # find all starts of reversed words and the words
  regex = /([^ ]+)/
  # gets positions of starts of each reversed word
  reversed_words = my_sentence.scan(regex).flatten
  reversed_word_start_indices = my_sentence.enum_for(:scan, regex).map { Regexp.last_match.begin(0) }

  # for each start of word:
  reversed_word_start_indices.each_with_index do |word_start_index, match_index|
    # now that the sentence is reversed the words need to be reversed
    # which will put them back in order.
    left = word_start_index
    right = left + reversed_words[match_index].length - 1
    until left == right || right < left
      my_sentence[left], my_sentence[right] = my_sentence[right], my_sentence[left]
      left += 1
      right -= 1
    end
  end
end
