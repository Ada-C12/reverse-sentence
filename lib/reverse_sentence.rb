require "pry"

# A method to reverse the words in a sentence, in place.
# Time complexity: ?
# Space complexity: ?
# def reverse_sentence(my_sentence)
#   if my_sentence.nil?
#     return ""
#   else
#     split_sentence = my_sentence.split(" ")
#     reversed_sentence = Array.new(split_sentence.count)

#     split_sentence.each_with_index do |str, index|
#       reversed_sentence[-(index + 1)] = str
#     end
#   end
#   p reversed_sentence
#   # if reversed_sentence.include? "engineer"
#   #   binding.pry
#   # end
#   reversed_sentence.join(" ")
# end

def reverse_sentence(my_sentence)
  if my_sentence.nil?
    return nil
  end
  reverse_string(my_sentence)
  index = 0

  while index < my_sentence.length
    if my_sentence[index] == " "
      # do nothing
    else
      start_index = index
      end_index = index
      while my_sentence[end_index] != " " && my_sentence[end_index] != nil
        end_index += 1
      end
      # puts my_sentence[start_index]
      # puts my_sentence[end_index - 1]
      reverse_string(my_sentence, start_index, end_index - 1)
      index = end_index
    end
    index += 1
  end
end

def reverse_string(str, start_idx = nil, end_idx = nil)
  if start_idx.nil? || end_idx.nil?
    start_idx = 0
    end_idx = str.length - 1
  end

  while start_idx <= end_idx
    str[start_idx], str[end_idx] = str[end_idx], str[start_idx]
    start_idx += 1
    end_idx -= 1
  end
end

# Don't create a new array. Only reverse the string in place!!

# word = "hello, world"

# new = word.split(" ")
# reversed_string = Array.new(new.count)

# new.each_with_index do |str, index|
#   reversed_string[-(index + 1)] = str
# end

# reversed_string.join(" ")
