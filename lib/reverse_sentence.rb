# A method to reverse the words in a sentence, in place.
# Time complexity: O(n2)
# Space complexity: O(n)
def reverse_sentence(my_sentence) 
  #Step_1: Reverse all characters within the string
  if my_sentence.length % 2 == 0
    pairs = my_sentence.length / 2
  else
    pairs = (my_sentence.length-1) / 2
  end

  i = 1
  (pairs).times do
    temp = my_sentence[i-1]
    my_sentence[i-1] = my_sentence[-i]
    my_sentence[-i] = temp
    i += 1
  end

  #Step_2: Reverse letters for each words
  space_indexes = (0...my_sentence.length).find_all { |c| my_sentence[c] == " " }

  # a is a tracker to loop through space_indexes array
  a = 0
  (space_indexes.length).times do
    if space_indexes[a] % 2 == 0
      pairs = space_indexes[a] / 2
    else
      pairs = (space_indexes[a]-1) / 2
    end
    
    # b is a tracker to reverse all letters for the current word
    b = 1
    (pairs).times do
      temp = my_sentence[b-1]
      my_sentence[b-1] = my_sentence[space_indexes[a]-i]
      my_sentence[space_indexes[a]-i] = temp
      b += 1
    end
    a += 1
  end

end

test = "Hello world!"
result = reverse_sentence(test)