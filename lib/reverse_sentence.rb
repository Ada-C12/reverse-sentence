# A method to reverse the words in a sentence, in place.
# Time complexity: O(n^2)
# Space complexity: O(n)

# Doesn't reverse in place - still working 

def reverse_sentence(my_sentence)
  if my_sentence == nil
    return nil
  elsif my_sentence == ""
    return ""
  end
  words = my_sentence.split(/(\s)/)
  return my_sentence if words.length < 2

  hi = words.length - 1
  low = 0
  until low >= hi
    bottom = words[low]
    top = words[hi]
    words[low] = top
    words[hi] = bottom
    hi -= 1
    low += 1
  end
  my_sentence = words.join
  return my_sentence
end
