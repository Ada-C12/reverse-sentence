# A method to reverse the words in a sentence, IN PLACE.
def reverse_sentence(my_sentence)
  # Time complexity: O(n^2)
  # Space complexity: O(1)
  return unless my_sentence
  return if my_sentence == ""
  
  # reverse all the characters in entire string
  reverse_chars(my_sentence)
  
  # iterate thru string word by word,
  # for each word, reverse all chars therein
  index = 0
  word_begin = 0
  
  while my_sentence[index]
    if (my_sentence[index] == " ") || (index == my_sentence.length-1)
      # puts "looking at word from #{word_begin} to #{index}"
      # puts "word = #{my_sentence[word_begin..index].inspect}"
      if my_sentence[index] == " "
        reverse_chars(my_sentence, word_begin, index-1)
      else
        reverse_chars(my_sentence, word_begin, index)
      end
      
      word_begin = index + 1
    end
    
    index += 1
  end
  
end

### HELPER FUNCTION ###
def reverse_chars(word, left=0, right=word.length-1)
  # Time  = O(n)
  # reverse all characters in word
  # left = 0
  # right = word.length-1
  temp = ""
  
  while left <= right
    word[left], word[right] = word[right], word[left]
    left += 1
    right -= 1
  end
end





# def reverse_sentence_NOT_IN_PLACE_AGAIN(my_sentence)
#   # Time complexity: O(m * n)???
#   # Space complexity: O(n), I just need a set of variables as temporary storage 
#   return unless my_sentence
#   return if my_sentence == ""

#   index = 0
#   count = 0
#   curr_str = ""
#   buffer = " "
#   iron_curtain = -1
#   len = my_sentence.length

#   while count < len     # O(n)
#     puts "Looking at index #{index}, which is #{my_sentence[index]}"
#     char = my_sentence[index]
#     index += 1
#     count += 1

# unless char == " "
#   curr_str << char

# else
#   puts "curr_str is now #{curr_str} which is ready to move to end"
#   # first modify to delete curr_str out of my_sentence
#   clone = my_sentence[index..-1].clone
#   my_sentence.delete!(my_sentence)
#   my_sentence << clone
#   puts "my_sentence got cut down to #{my_sentence}"

#   # modify to add each letter back bit by bit
#   while curr_str[-1]
#     my_sentence.insert(iron_curtain, curr_str[-1])
#     iron_curtain -= 1
#     curr_str = curr_str[0...-1]
#     puts "my_sentence added back up to #{my_sentence}"
#   end

#   my_sentence.insert(iron_curtain, buffer)
#   puts "adding space... my_sentence added back up to #{my_sentence}"
#       iron_curtain -= 1

#       # reset index for next word in front of string
#       index = 0
#     end   
#   end

#   puts "\n\nANSWER = #{my_sentence.inspect}"
#   clone = my_sentence.clone
#   my_sentence.delete!(my_sentence)
#   my_sentence << clone

# end


############################################################################################################
# def reverse_sentence_NOT_IN_PLACE(my_sentence)
#   # Time complexity: O(n) overall.  I think Str[0...-1] is O(k) where k is based on avg word size and therefore constant
#   # Space complexity: O(n)
#   return my_sentence unless my_sentence

#   index = 0
#   new_array = []
#   curr_str = ""

#   while my_sentence[index]      # O(n)
#     char = my_sentence[index]

#     if curr_str[-1] != " "
#       curr_str << char
#     elsif curr_str[-1] == " "
#       curr_str = curr_str[0...-1]   #O(k)?
#       new_array << curr_str
#       curr_str = char
#     end

#     index += 1
#   end
#   new_array << curr_str

#   rev_array = []
#   new_array.each do |word|    # O(n)
#     rev_array.unshift word
#   end

#   my_sentence.delete!(my_sentence)
#   my_sentence << rev_array.join(" ")    #O(n)
# end




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