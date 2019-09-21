class String
  def peek
    if self[length.pred] == ' '
      match(/\s+$/)[0].delete_suffix ' '
    else
      match(/[a-zA-Z\.,'\?!]+$/)[0]
    end
  end

  def rotate! i
    suffix = peek
    
    insert i, (suffix + ' ')
    delete_suffix!(' ' + suffix)

    suffix.length.succ
  end
end

# A method to reverse the words in a sentence, in place.
# Time complexity: O(n * m)
#   where n = length of sentence
#   and m = number of word units in sentence per #peek
# 
# Space complexity: O(n)
#   the string grows by the length of the longest word unit once per iteration, thus it cannot grow longer than 2n where n = the length of the sentence
#   is it possible to call delete_suffix before insert, and then correct i accordingly for O(1)?
#
def reverse_sentence(my_sentence)
  return nil unless my_sentence

  i = 0
  while i < my_sentence.length.pred
    i += my_sentence.rotate! i
  end
end
