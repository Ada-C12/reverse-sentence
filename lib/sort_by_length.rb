# A method which will return an array of the words in the string
#  sorted by the length of the word.
# Time complexity: ?
# Space complexity: ?

require 'pry'
def sort_by_length(my_sentence)
  sorted_sentence = my_sentence.split(" ")
  bubble_sort(sorted_sentence, sorted_sentence.length)
  return sorted_sentence
end

def bubble_sort(array, length)
  i = 0
  while i < length-1 # outer loop
    j = 0
    while j < length-i-1 # inner loop
      if array[j].length > array[j+1].length # swap
        temp = array[j]
        array[j] = array[j+1]
        array[j+1] = temp
      end
      j += 1
    end
    i += 1
  end
end 

p sort_by_length("Basketball is life!")