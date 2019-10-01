# A method which will return an array of the words in the string
#  sorted by the length of the word.
# Time complexity: O(n^2) because as the algorithm scales, each nested loop will run n number of times according to the input.
# Space complexity: O(1) because the same amount of memory will be used regardless of the input size.
def sort_by_length(my_sentence)
  sentence_array = my_sentence.split
  
  i = 0
  swapped = true 

  while i < sentence_array.length - 1 && swapped 
    j = 0
    swapped = false
    while j < sentence_array.length - i - 1
      if sentence_array[j].length > sentence_array[j + 1].length
        temp = sentence_array[j]
        sentence_array[j] = sentence_array[j + 1]
        sentence_array[j + 1] = temp
        swapped = true
      end 
      j += 1
    end
    i += 1
  end
  return sentence_array
end


