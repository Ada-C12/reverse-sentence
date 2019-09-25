# A method to reverse the words in a sentence, in place.
# Time complexity: ?
# Space complexity: ?

def swap_chars(arr, index_one, index_two)
  tmp = arr[index_two]
  arr[index_two] = arr[index_one]
  arr[index_one] = tmp
end

# def find_empty_space(array)
#   i = 0 
#   until array[i] == " "
#     i += 1
#   end
#   return i 
# end 

def reverse_sub_str(array, start_position, end_position)
  ((end_position - start_position + 1) / 2).times do
    swap_chars(array, start_position, end_position)
    start_position += 1
    end_position -= 1
  end 
  return array
end 

def reverse_sentence(my_sentence)
  
  if my_sentence == ""
    return ""
  elsif my_sentence == nil
    return nil 
  end
  
  
  i = 0
  j = (my_sentence.length) -1 
  reverse_sub_str(my_sentence, i, j)
  # p my_sentence
  
  
  empty_index_positions = []
  my_sentence.length.times do |i|
    if my_sentence[i] == " "
      empty_index_positions << i 
    end 
  end
  # p empty_index_positions
  
  if empty_index_positions.length == 0 
    i = 0
    j = (my_sentence.length) -1 
    reverse_sub_str(my_sentence, i, j)
    return my_sentence
  end
  
  empty_index_positions.length.times do |i|
    if i == 0
      reverse_sub_str(my_sentence, i, empty_index_positions[i] - 1)
    else 
      start_position = empty_index_positions[i - 1] + 1
      end_position = empty_index_positions[i] - 1
      reverse_sub_str(my_sentence, start_position, end_position)
    end 
  end 
  
  i = empty_index_positions[-1] + 1
  j = my_sentence.length - 1
  reverse_sub_str(my_sentence, i, j )
  return my_sentence
end
