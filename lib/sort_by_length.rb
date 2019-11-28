# A method which will return an array of the words in the string
# sorted by the length of the word.
# Time complexity: O(n2)
# Space complexity: O(n)

def sort_by_length(sentence)
  #Step_1: break the sentence into an array of words
  array = sentence.split(/\W+/)
  #Step_2: use insertion sort to sort the array
  i = 1
  while i < array.length
    to_insert = array[i]
    j = i
    while j > 0 && array[j-1].length > to_insert.length
      array[j] = array[j-1]
      j -= 1
    end
    array[j] = to_insert
    i += 1
  end

  return array
end