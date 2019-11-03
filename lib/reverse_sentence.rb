# # A method to reverse the words in a sentence, in place.
# # Time complexity: ?
# # Space complexity: ?


# def reverse_sentence(my_sentence)
#   reverse_sentence = my_sentence.split(" ")
#   bubble_sort(reverse_sentence, reverse_sentence.length) 
#   reversed = reverse_sentence.join(" ")
#   return reversed
# end

# def bubble_sort(array, length)
#   i = 0
#   while i < length-1 # outer loop
#     j = 0
#     while j < length-i-1 # inner loop
#       p array.index(array[j])
#       p array.index(array[j+1])
#       if array.index(array[j]) < array.index(array[j+1]) # swap
#         temp = array[j]
#         array[j] = array[j+1]
#         array[j+1] = temp
#       end
#       j += 1
#     end
#     i += 1
#   end
# end 

# test_string = "hello, world"

# p reverse_sentence(test_string)