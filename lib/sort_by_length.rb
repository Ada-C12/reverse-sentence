# A method which will return an array of the words in the string
#  sorted by the length of the word.
# Time complexity: ?
# Space complexity: ?

def swap(arr, index_one, index_two)
  tmp = arr[index_two]
  arr[index_two] = arr[index_one]
  arr[index_one] = tmp
end


def sort_by_length(my_sentence)
  my_sentence = my_sentence.split 
  
  j = 0 # outer counter
  my_sentence.length.times do
    comparison_word = my_sentence[j]
    for i in j...(my_sentence.length)
      if my_sentence[i].length < comparison_word.length
        puts my_sentence[i]
        puts comparison_word
        swap(my_sentence, i, j )
        comparison_word = my_sentence[j]
      end
    end
    j += 1
  end
  return my_sentence
end
