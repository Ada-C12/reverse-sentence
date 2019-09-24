# A method which will return an array of the words in the string
#  sorted by the length of the word.
# Time complexity: ?
# Space complexity: ?
def sort_by_length(my_sentence)
  sentence_array = my_sentence.split
  length = sentence_array.length 
  (0...(length - 1)).each do |i|
    min_index = i
    j = i + 1
    while j < length
      if sentence_array[j].length < sentence_array[min_index].length
        min_index = j
      end
      j += 1
    end
    if min_index != i
      temp = sentence_array[min_index]
      sentence_array[min_index] = sentence_array[i]
      sentence_array[i] = temp
    end
    i += 1
  end
  return sentence_array
end

