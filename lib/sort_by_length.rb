# A method which will return an array of the words in the string
#  sorted by the length of the word.
# Time complexity: o(n^2)
# Space complexity: o(n)

def sort_by_length(my_sentence)
  words = my_sentence.split(" ")
  # print words
  #************
  length = words.length
  i = 0
  while i < length - 1
    j = 0
    while j < length - i - 1
      if words[j].length > words[j + 1].length
        temp = words[j]
        words[j] = words[j + 1]
        words[j + 1] = temp
      end
      j += 1
    end
    i += 1
  end
  return words
end


# print sort_by_length("abc ab a")
