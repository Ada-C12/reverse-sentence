# A method to reverse the words in a sentence, in place.
# Time complexity: O(n^2), linear, because there are three while loops within reverse_sentence() and reverse(), and two that are nested. The amount of iterations may increase proportionately to the data being passed through.
# Space complexity: O(1), constant, because the only data that is being stored is the start/ending/temp variables, and the array being passed through is being reversed in place.
def reverse_sentence(my_sentence)
  return [] if my_sentence.nil? || my_sentence.length == 0
  
  reverse(my_sentence, 0, my_sentence.length-1)
  
  start = 0
  
  while start < my_sentence.length
    if my_sentence[start] == " "
      start+=1
    else
      ending = start
      
      while ending < my_sentence.length && my_sentence[ending] != " "
        ending+=1
      end
      
      reverse(my_sentence, start, ending-1)
      
      start = ending
    end
  end
end


def reverse(string, i, j)
  while i < j
    temp = string[i]
    string[i] = string[j]
    string[j] = temp
    i+=1
    j-=1
  end
  
end
