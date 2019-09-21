# A method to reverse the words in a sentence, in place.
# Time complexity: ?
# Space complexity: ?
def reverse_sentence(my_sentence)
  # turn my sentence into an array of strings
  array = my_sentence.split
  length = array.length
  
  i = 0
  while i < length-1 # outer loop
    j = 0
    while j < length-i-1 # inner loop
      if array[j] > array[j+1] # swap
        temp = array[j]
        array[j] = array[j+1] 
        array[j+1] = temp
      end
      j += 1
    end
    i += 1
  end
  return array
  raise NotImplementedError
end


# def bubble_sort(array, length)
#   i = 0
#   while i < length-1 # outer loop
#     j = 0
#     while j < length-i-1 # inner loop
#       if array[j] > array[j+1] # swap
#         temp = array[j]
#         array[j] = array[j+1]
#         array[j+1] = temp
#       end
#       j += 1
#     end
#     i += 1
#   end
# end
