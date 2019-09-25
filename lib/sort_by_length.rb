# A method which will return an array of the words in the string
#  sorted by the length of the word.
# Time complexity: O(n**2)
# Space complexity: O(n)
def sort_by_length(my_sentence)
  words = my_sentence.split(" ")
  results = []
  words.each do |word|
    if results.length > 0
      results.each_with_index do |result, index|
        if word.length < result.length
          results.insert(index, word)
          break
        elsif index == (results.length - 1)
          results << word
          break
        end
      end
    else
      results << word
    end
  end 
  return results
end 
