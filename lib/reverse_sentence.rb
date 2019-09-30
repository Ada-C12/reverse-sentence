# A method to reverse the words in a sentence, in place.
# Time complexity: ?
# Space complexity: ?
require 'pry'
# reverse string given start and ending index
def reverse_word(string, start, ending)
  
  i = start
  j = ending
  
  while i < j
    temp = string[i]
    string[i] = string[j]
    string[j] = temp
    
    i += 1
    j -= 1
  end
end

# call method made to reverse sentence

def reverse_sentence(string)
  if string == nil
    return
  end
  reverse_word(string, 0, string.length - 1)
  start = 0
  while start < string.length
    if string[start] == " "
      start += 1 
      next
      
    else # found the start of a word
      ending = start
      while ending <= string.length
        if string[ending] == " " || ending == string.length
          reverse_word(string, start, ending - 1)
          start = ending
          break
        end
        
        ending += 1 
        
      end
    end
  end
end
