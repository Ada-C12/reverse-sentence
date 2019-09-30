# A method to reverse the words in a sentence, in place.
# Time complexity: ?
# Space complexity: ?

# reverse string given start and ending index
def reverse(string, start, ending)
  
  i = start
  j = ending
  
  while i < j
    temp = string[i]
    string[i] = string[j]
    string[j] = string[i]
    
    i += 1
    j -= 1
  end
end


