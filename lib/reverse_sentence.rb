# A method to reverse the words in a sentence, in place.
# Time complexity: O(n2)
# Space complexity: O(n)
def reverse_sentence(my_sentence) 
  #Step_0: Screen out all sentences that doesn't need to be/can't be reversed
  if my_sentence == nil || my_sentence == "" || my_sentence.include?("\s") == false
    return my_sentence
    exit
  end

  #Step_1: Reverse all characters within the string in place
  sentence_pairs = pairs_helper(my_sentence.length)
  i = 1
  (sentence_pairs).times do
    temp = my_sentence[i-1]
    my_sentence[i-1] = my_sentence[-i]
    my_sentence[-i] = temp
    i += 1
  end

  #Step_2: Find all whitespace index(es) within the current string
  space_indexes = (0...my_sentence.length).find_all { |c| my_sentence[c] == " " }

  #Step_3: Reverse all characters for each word based on the whitespace index(es)
  #Step_3.1: Reverse the first word in the string
  word_pairs = pairs_helper(space_indexes[0])
  i = 1
  (word_pairs).times do
    temp = my_sentence[i-1]
    my_sentence[i-1] = my_sentence[space_indexes[0]-i]
    my_sentence[space_indexes[0]-i] = temp
    i += 1
  end
  #Step_3.2: reverse the last word in the string
  word_pairs = pairs_helper((my_sentence.length - 1) - space_indexes[-1])
  i = 1
  (word_pairs).times do
    temp = my_sentence[-i]
    my_sentence[-i] = my_sentence[space_indexes[-1]+i]
    my_sentence[space_indexes[-1]+i] = temp
    i += 1
  end
  #Step_3.3: reverse the words in between (if any)
  i = 0
  if space_indexes.length == 1
    return my_sentence
  else
    until i == (space_indexes.length - 1)
      if my_sentence[space_indexes[i]+1] != " "
        word_pairs = pairs_helper(space_indexes[i+1]-space_indexes[i]-1)
        n = 1
        (word_pairs).times do
          temp = my_sentence[space_indexes[i]+n]
          my_sentence[space_indexes[i]+n] = my_sentence[space_indexes[i+1]-n]
          my_sentence[space_indexes[i+1]-n] = temp
          n += 1
        end
      end
      i += 1
    end
    return my_sentence
  end
end

# Helper methoder to determin pairs of character that needs to be swapped
def pairs_helper(length)
  if length % 2 == 0
    pairs = length / 2
  else
    pairs = (length - 1) / 2
  end
  return pairs
end

# test_string = "Yoda is awesome!"
# test_result = reverse_sentence(test_string)