# A method to reverse the words in a sentence, in place.
# Time complexity: O(n) n is the length of my_sentence which its characters are iterated over. The number of loops will increase proportionally
# Space complexity: O(1) we only return one string that is reversed in place

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

# Helper method for reverse_sentence method
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
  return str
end
