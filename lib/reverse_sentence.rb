# # A method to reverse the words in a sentence, in place.
# # Time complexity: ?
# # Space complexity: ?

# require'pry'

# def reverse_sentence(my_sentence)

#   if !my_sentence.include?(" ")
#     return my_sentence
#   elsif my_sentence == nil
#     return my_sentence
#   end

#   loops = my_sentence.count(" ")

#   length_of_sentence = my_sentence.length

#   i = 0

#   previous_captures = 1

#   loops.times do
#     markers = my_sentence.match(/([[:graph:]])*/)
#     capture = markers[0].to_s

#     my_sentence.delete_prefix!(capture)

#     augmented_capture = capture.insert(0, " ")

#     location = length_of_sentence - (capture.length + 1) - ( previous_captures )

#     my_sentence = my_sentence.insert(location, augmented_capture)

#     my_sentence.lstrip!

#     previous_captures = previous_captures + augmented_capture.length

#   end




#   puts my_sentence

#   return my_sentence  
# end


# 'hello'.match('(.)\1')      #=> #<MatchData "ll" 1:"l">


# A method to reverse the words in a sentence, in place.
# Time complexity: ?
# Space complexity: ?

# require'pry'

# def reverse_sentence(my_sentence)

#   if my_sentence == nil || !my_sentence.include?(" ")
#     return my_sentence
#   end

#   my_sentence.reverse!

#   word = []

#   start_marker = 0
#   end_marker = 0

#   i = 0  # iterates over the entire sentence

#   until i == my_sentence.length do
#     if my_sentence[i] != " "
#       word << my_sentence[i]
#       i += 1
#       end_marker += 1
#     else
#       if word.length > 0
#         j = start_marker
#         until j == end_marker
#           puts my_sentence
#           puts start_marker
#           puts word.length 
#           puts word[word.length - start_marker - 1]
#           my_sentence[start_marker + j] = word[word.length - j - 1]
#           j += 1
#         end
#         start_marker = 0
#         word = []
#       end        
#       i += 1
#       marker = 0 
#       start_marker += 1
#     end

#     puts "#{word}"
#   end
#   return my_sentence  
# end


# A method to reverse the words in a sentence, in place.
# Time complexity: ?
# Space complexity: ?

require'pry'

def reverse_sentence(my_sentence)
  
  # short circuit if empty sentence
  if my_sentence == nil || !my_sentence.include?(" ")
    return my_sentence
  end
  
  # initial digest of sentence
  # reverses all characters
  my_sentence.reverse! 
  
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
  
  # determines the last index number that will be handled
  last_index = my_sentence.length - 1 
  
  # determination of which methods are needed
  if !space_array.include? (0)
    puts "I am running first"
    first(space_array[0], my_sentence)
  end
  
  if !space_array.include? (last_index)
    puts "I am running last"
    last(space_array[-1], last_index, my_sentence,)
  end
  
  if space_array.length > 1   
    puts "I am running middle"
    i = 0
    p = space_array.length - 1
    
    if i + 1 == p
      my_sentence[i], my_sentence[i+1] = my_sentence[i+1], my_sentence[i]
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
  
  until j == half_limit 
    my_sentence[last_index_to_swap - j], my_sentence[j] = my_sentence[j], my_sentence[last_index_to_swap - j]
    j += 1
  end
  
end

def last(last_space_index_number, last_index, my_sentence)
  first_index_to_swap = last_space_index_number + 1
  half_limit = (last_index - first_index_to_swap) / 2
  
  j = 0
  
  until j == half_limit
    my_sentence[first_index_to_swap + j], my_sentence[last_index - j] = my_sentence[last_index - j], my_sentence[first_index_to_swap + j]
    j += 1
  end
end

def middle(first_space_index_number, last_space_index_number, my_sentence)
  # short-circuit for one-letter words
  
  if last_space_index_number - first_space_index_number == 1
    return
    # elsif last_space_index_number - first_space_index_number == 3
    #   my_sentence[first_space_index_number + 1], my_sentence[last_space_index_number - 1] = my_sentence[last_space_index_number - 1], my_sentence[first_space_index_number + 1]
    #   return
  end
  
  first_index_to_swap = first_space_index_number + 1
  last_index = last_space_index_number - 1
  half_limit = (last_space_index_number - first_space_index_number) / 2
  
  j = 0
  
  # if 
  
  until j == half_limit
    my_sentence[first_index_to_swap + j], my_sentence[last_index - j] = my_sentence[last_index - j], my_sentence[first_index_to_swap + j]
    j += 1
  end
  
end
