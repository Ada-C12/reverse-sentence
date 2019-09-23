# A method which will return an array of the words in the string
#  sorted by the length of the word.
# Time complexity: I don't know! :(
# Space complexity: O(n)
def sort_by_length(my_sentence)
  array = my_sentence.split
  words_by_length = {}
  i = 0
  while i < array.length #O(m)
    if words_by_length[array[i].length] == nil
      words_by_length[array[i].length] = []
    end
    words_by_length[array[i].length] << array[i]
    i += 1
  end

  j = 0
  new_array = [] #space = O(n)
  while j < my_sentence.length #O(n)
    if words_by_length[j] != nil
      new_array << words_by_length[j]
    end
  j += 1
  end

  final_array = [] #space = O(n)
  k = 0
  while k < new_array.length #O(m) 
    l = 0
    while l < new_array[k].length #O(p)
      final_array << new_array[k][l]
      l += 1
    end
    k += 1
  end

  return final_array
  
end

