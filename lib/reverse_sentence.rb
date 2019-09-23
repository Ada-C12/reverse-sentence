# A method to reverse the words in a sentence, in place.
# Time complexity: O(n), because we check at most 2 times each character.
# Space complexity: O(1), variables are always constant.

def reverse_sentence(my_sentence)
  if my_sentence == nil
    return my_sentence
  end

  reverse(my_sentence, 0, my_sentence.length - 1)
  index = 0
  first = 0
  my_sentence.each_char  do |character|
    if character == " "
      reverse(my_sentence, first, index - 1)
      first = index + 1
    end
    index += 1
  end
  reverse(my_sentence, first ,my_sentence.length - 1)
end

def reverse(string,first,last)
  memo = 0
  i = first
  j = last
  while i < j 
    memo = string[i]
    string[i] = string[j]
    string[j] = memo
    i += 1
    j -= 1
  end
end

