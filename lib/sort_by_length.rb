# A method which will return an array of the words in the string
#  sorted by the length of the word.
# Time complexity: O(n^2) b/c bubble sort
# Space complexity: O(1)
def sort_by_length(my_sentence)
  array = my_sentence.split(" ")
  array_size = array.length
  
  temp = nil
  swaps_made = nil
  
  j = 0
  stop_here = array_size - 1
  
  while 0 < stop_here
    # puts "\nOUTER LOOP    stop @ index #{stop_here}"
    j = 0
    swaps_made = false
    
    while j < stop_here
      # puts "  INNER LOOP #{j}     stop @ index #{stop_here}"
      curr_word = array[j]
      next_word = array[j+1]
      
      if curr_word.length > next_word.length
        temp = curr_word
        array[j] = next_word
        array[j+1] = temp
        swaps_made = true
      end
      
      j += 1
    end
    
    if swaps_made == false
      # puts "HUZZAH!  WE CAN STOP NOW!"
      return array
    end
    
    stop_here -= 1
  end
  
  return array
end

