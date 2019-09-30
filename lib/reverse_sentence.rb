# A method to reverse the words in a sentence, in place.
# Time complexity: ?
# Space complexity: ?

# min = my_sentence[0]
# max = my_sentence[-1]
# my_arr = #["yoda"__"is"___"awesome"].dup and add in spaces to new array[?]
# my_arr = ["yoda", "__", "is", "___", "awesome"]
# my_new_arr = []
# loop thru 
# first = my_arr[0] 
# last = my_arr[-1]
# first, last = last, first 
# last += 1
# first -= -1
# shovel into my_new_array 
# in a perfect world, would return in order we want

def reverse_sentence(my_sentence)
  return nil if my_sentence == nil
  my_sentence.split(" ")
  
  
end
