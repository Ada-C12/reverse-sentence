# A method which will return an array of the words in the string
#  sorted by the length of the word.
# Time complexity: O(n^2), quadratic, because there are two while loops in the insertion sort function that will both iterate n times.
# Space complexity: O(n), linear, because the new array that is being stored will increase depending on the size of the data (my_sentence) being passed through.
def sort_by_length(my_sentence)
  return [] if my_sentence.nil? || my_sentence.length == 0
  
  return insertion_sort(my_sentence.split(" "))
end

def insertion_sort(array)
  length = array.length
  
  i = 1
  while i < length
    to_insert = array[i]
    j = i
    while j > 0 && array[j - 1].length > to_insert.length
      array[j] = array[j-1]
      j-=1
    end
    array[j] = to_insert
    i+=1
  end
  return array
end
