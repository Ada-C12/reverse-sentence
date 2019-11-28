# A method to reverse the words in a sentence, in place.
# Time complexity: O(n2)
# Space complexity: O(n)
def reverse_helper(string, s, e)
  pairs = (e + 1 - s)/2
  pairs.times do
    temp = string[s]
    string[s] = string[e]
    string[e] = temp
    s += 1
    e -= 1
  end
end

def reverse_sentence(sentence) 
  return sentence if sentence == nil || sentence == "" || sentence.include?("\s") == false
  reverse_helper(sentence, 0, (sentence.length - 1))

  j = 0
  spaces = []
  while j <= sentence.length
    if sentence[j] == " "
      spaces << j
      if spaces.length == 1
        # reverse the first word
        reverse_helper(sentence, 0, (j - 1))
      elsif spaces.length > 1
        # reverse the middle word
        reverse_helper(sentence, (spaces[-2] + 1), (j - 1))
      end
    elsif sentence[j] == nil
      # reverse the last word
      reverse_helper(sentence, (spaces[-1] + 1), (j - 1))
    end
    j += 1
  end
  
  return sentence
end