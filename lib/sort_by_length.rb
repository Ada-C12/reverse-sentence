# A method which will return an array of the words in the string
#  sorted by the length of the word.
# Time complexity: O(n2)
# Space complexity: O(1)

def sort_by_length(my_sentence)
# splits the sentence
  array_of_sentence = my_sentence.split

  #short-cirtcuit retunn statement for empty strings
  if array_of_sentence.length == 0
    return []
  end
  
  i = 0  #internal counter
  
  e = 1  #external counter
  
  # bubble sort :)
  until e == array_of_sentence.length - 1
    
    until i == array_of_sentence.length - 1
      
      if array_of_sentence[i].length > array_of_sentence[i + 1].length
        array_of_sentence[i], array_of_sentence[i + 1] = array_of_sentence[i + 1], array_of_sentence[i]
        i += 1
      else
        i += 1
      end
      
    end
    
    e += 1
    
  end

  #returns transformed, digested, sorted array
  return_statement = array_of_sentence
  
  return return_statement
  
end
