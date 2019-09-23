# A method to reverse the words in a sentence, in place.
# Time complexity: O(n)
# Space complexity: O(n)
def reverse_sentence(my_sentence)
  if my_sentence == nil
    return nil
  end
  
  regex = /[A-Za-z']+[!\?\.,]?| +/
  a = my_sentence.scan(regex) #O(n)
  i = 0
  j = (a.length)-1
  while i < j
    temp = a[i]
    a[i] = a[j]
    a[j] = temp 
    i += 1
    j -= 1
  end

  string = "" #O(n)
  k = 0
  while k < a.length #O(m)
    string << a[k]
    k += 1
  end

  l = 0
  while l < string.length #O(n)
    my_sentence[l] = string[l]
    l += 1
  end

  return my_sentence 
end
