# A method to reverse the words in a sentence, in place.
# Time complexity: O(2n) The array is reviewed twice, once for spaces to populate the space array, and once more piecewise to do all the swaps
# Space complexity: O(1)

require'pry'

def reverse_sentence(my_sentence)
  
  # short circuit if empty sentence
  if my_sentence == nil || !my_sentence.include?(" ")
    return my_sentence
  end
  
  # determines the last index number that will be handled
  last_index = my_sentence.length - 1 
  
  # reverses all the characters in the string
  i = 0
  my_sentence[i]
  half_swap_limit = last_index / 2  + 1
  
  until i == half_swap_limit
    my_sentence[i], my_sentence[last_index - i] = my_sentence[last_index - i], my_sentence[i]
    
    i += 1
  end
  
  # creates and populates an array of all space characters
  space_array = []
  i = 0
  my_sentence.each_char do |character|
    if character == " "
      space_array << i
      i += 1
    else 
      i += 1
    end
  end
  
  
  
  # determination of which methods are needed
  if !space_array.include? (0)
    first(space_array[0], my_sentence)
  end
  
  if !space_array.include? (last_index)
    last(space_array[-1], last_index, my_sentence)
  end
  
  if space_array.length > 1 # this is run if there's more than 2 words, hence if there's more than 1 space
    i = 0
    p = space_array.length - 1
    
    if i + 1 == p # short-circuit for 1-letter words
      first_character = space_array[0] + 1
      second_character = space_array[1] - 1
      my_sentence[first_character], my_sentence[second_character] = my_sentence[second_character], my_sentence[first_character]
    else
      until i + 1 == p
        middle(space_array[i], space_array[i+1], my_sentence)
        i += 1
      end  
    end
  end
  return my_sentence
  
end

def first(first_space_index_number, my_sentence)
  j = 0
  
  last_index_to_swap = first_space_index_number - 1
  half_limit = last_index_to_swap / 2
  
  if last_index_to_swap.even?
    until j == half_limit 
      my_sentence[last_index_to_swap - j], my_sentence[j] = my_sentence[j], my_sentence[last_index_to_swap - j]
      j += 1
    end
  else
    until j == half_limit + 1
      my_sentence[last_index_to_swap - j], my_sentence[j] = my_sentence[j], my_sentence[last_index_to_swap - j]
      j += 1
    end
  end
end

def last(last_space_index_number, last_index, my_sentence)
  
  first_index_to_swap = last_space_index_number + 1
  half_limit = (last_index - first_index_to_swap) / 2
  
  j = 0
  
  if (last_index - first_index_to_swap).even?
    until j  == half_limit
      my_sentence[first_index_to_swap + j], my_sentence[last_index - j] = my_sentence[last_index - j], my_sentence[first_index_to_swap + j]
      j += 1
    end
  else
    until j == half_limit + 1
      my_sentence[first_index_to_swap + j], my_sentence[last_index - j] = my_sentence[last_index - j], my_sentence[first_index_to_swap + j]
      j += 1
    end
  end
end

def middle(first_space_index_number, last_space_index_number, my_sentence)
  # short-circuit for one-letter words
  if last_space_index_number - first_space_index_number == 1
    return
  elsif last_space_index_number - first_space_index_number == 3
    my_sentence[first_space_index_number + 1], my_sentence[last_space_index_number - 1] = my_sentence[last_space_index_number - 1], my_sentence[first_space_index_number + 1]
    return
  end
  
  first_index_to_swap = first_space_index_number + 1
  last_index = last_space_index_number - 1
  half_limit = (last_index - first_index_to_swap) / 2
  
  j = 0
  
  if (last_space_index_number - first_space_index_number).even?
    until j == half_limit
      my_sentence[first_index_to_swap + j], my_sentence[last_index - j] = my_sentence[last_index - j], my_sentence[first_index_to_swap + j]
      j += 1
    end
  else
    until j == half_limit + 1
      my_sentence[first_index_to_swap + j], my_sentence[last_index - j] = my_sentence[last_index - j], my_sentence[first_index_to_swap + j]
      j += 1
    end
    
  end
end
