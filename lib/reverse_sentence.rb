# A method to reverse the words in a sentence, in place.
# Time complexity: O(n2)
# Space complexity: O(n)
def reverse_sentence(my_sentence) 
  #Step_0: Screen out all sentences that doesn't need to be/can't be reversed
  if my_sentence == nil || my_sentence == ""
    return my_sentence
    exit
  elsif my_sentence.include?("\s") == false
    return my_sentence
    exit
  end

  #Step_1: Reverse all characters within the string in place
  sentence_pairs = paris_helper(my_sentence.length)
  i = 1
  (sentence_pairs).times do
    temp = my_sentence[i-1]
    my_sentence[i-1] = my_sentence[-i]
    my_sentence[-i] = temp
    i += 1
  end

  #Step_2: Find all indexes for the whitespaces within the current string
  space_indexes = (0...my_sentence.length).find_all { |c| my_sentence[c] == " " }

  #Step_3: Reverse all characters for each word within the string in place
  if space_indexes.length == 1
    my_sentence.reverse_first
    my_sentence.reverse_last
  else
    my_sentence.reverse_first
    my_sentence.reverse_last
    my_sentence.reverse_middle
  end

  return my_sentence
end

# Helper methoder to determin pairs of character that needs to be swapped
def paris_helper(length)
  if my_sentence.length % 2 == 0
    pairs = my_sentence.length / 2
  else
    pairs = (my_sentence.length-1) / 2
  end
  return pairs
end

# Helpfer method to reverse the first word in the string
def reverse_first
  word_pairs = paris_helper(space_indexes[0])
  i = 1
  (word_pairs).times do
    temp = my_sentence[i-1]
    my_sentence[i-1] = my_sentence[space_indexes[0]-i]
    my_sentence[space_indexes[0]-i] = temp
    i += 1
  end
end

# Helpfer method  to reverse the last word in the string
def reverse_last
  word_pairs = paris_helper(space_indexes[-1])
  i = 1
  (word_pairs).times do
    temp = my_sentence[-i]
    my_sentence[-i] = my_sentence[space_indexes[-1]+i]
    my_sentence[space_indexes[-1]+i] = temp
    i += 1
  end
end

# Helper method to reverse the middle parts of the string (word(s) between the first and last words)
def reverse_middle
  until tracker == space_indexes[-1]
    i = 0
    tracker == space_indexes[i]
    if my_sentence[space_indexes[i]+1] != " "
      word_pairs = paris_helper(space_indexes[i+1]-space_indexes[i]-1)
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
end