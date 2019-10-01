# A method which will return an array of the words in the string
#  sorted by the length of the word.
# Time complexity: O(n**2) quadratice because there is a while loop with an if statemeny inside of it.
# Space complexity: O(n) linear because the array will increase the same size of the increas in size of the string.
def sort_by_length(my_sentence)
  if my_sentence.nil? || my_sentence == ""
    return []
  end
  word_array = my_sentence.split(" ")
  sorted = []
  sorted << word_array[0]
  
  
  word_array.each do |word|
    index = 0
    while index < word_array.length
      if word.length < sorted[index].length
        sorted.insert(index, word)
        break
      elsif word.length == sorted[index].length
        sorted.insert(index+1,word)
        break
      elsif index == sorted.length-1
        sorted.insert(index+1,word)
        break
      end
      index += 1
    end
  end
  return sorted.uniq
end
