# A method to reverse the words in a sentence, in place.
# Time complexity: O(n) overall.  I think Str[0...-1] is O(k) where k is based on avg word size and therefore constant
# Space complexity: O(n)

def reverse_sentence(my_sentence)
  return my_sentence unless my_sentence
  
  index = 0
  new_array = []
  curr_str = ""
  
  while my_sentence[index]      # O(n)
    char = my_sentence[index]
    
    if curr_str[-1] != " "
      curr_str << char
    elsif curr_str[-1] == " "
      curr_str = curr_str[0...-1]   #O(k)?
      new_array << curr_str
      curr_str = char
    end
    
    index += 1
  end
  new_array << curr_str
  
  rev_array = []
  new_array.each do |word|    # O(n)
    rev_array.unshift word
  end
  
  my_sentence.delete!(my_sentence)
  my_sentence << rev_array.join(" ")    #O(n)
end




# def not_quite_reverse_sentence(my_sentence)
#   return my_sentence unless my_sentence

#   reversed_array = []
#   array = my_sentence.split(" ")
#   index = array.length - 1

#   while index >= 0
#     reversed_array << array[index]
#     index -= 1
#   end

#   answer = reversed_array.join(" ")

#   my_sentence.delete!(my_sentence)
#   my_sentence << answer
#   return answer
# end