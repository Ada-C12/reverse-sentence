# A method which will return an array of the words in the string
#  sorted by the length of the word.
# Time complexity: ?
# Space complexity: ?
def sort_by_length(my_sentence)
  # split my_sentence by words assuming spaces separate them
  # insertion_sort them in here, returning array of words

  words = my_sentence.split(" ")
  puts words
  # loop through from 2nd item to end, outer loop increasing by one,
  i = 1
  while i < words.length
    puts i
    puts words.length
    # set variable equal to "to_be_inserted"
    to_be_inserted = words[i]
    puts to_be_inserted
    j = i
    # from j to the beginning, and until j is less than value at [j-1]
    while j > 0 && words[j-1].length > to_be_inserted.length 
      # check the value at [j-1], if value at [j-1] is greater than value at [j] then swap their values
      if words[j-1].length > words[j].length
        words[j], words[j-1] = words[j-1], words[j]
      end
      j -= 1
      puts words
      puts j
    end
    words[j] = to_be_inserted
    i += 1
    # reloop checking if now j is not greater than spot at left, then insert it there
      # how to insert??
      # we say "words[j] = to_be_inserted" ... should work ??
  end
  puts words
  return words
end
