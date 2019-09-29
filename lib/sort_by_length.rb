# A method which will return an array of the words in the string
#  sorted by the length of the word.
# Time complexity: o(n^2)
# Space complexity: o(1)
def sort_by_length(my_sentence)
  #raise NotImplementedError, "Method not implemented"
  new_sentence = my_sentence.split()
  n = new_sentence.length
  for j in 0..n-1
    for i in 0..n-2-j
      if new_sentence[i].length > new_sentence[i + 1].length
        temp = new_sentence[i]
        new_sentence[i] = new_sentence[i+1]
        new_sentence[i + 1] = temp
      end
    end
  end
  return new_sentence
end
