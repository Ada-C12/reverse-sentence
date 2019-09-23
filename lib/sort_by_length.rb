# A method which will return an array of the words in the string
#  sorted by the length of the word.
# Time complexity: O(n^^2) as .each is O(n) and there are 2 .eachs' 
# Space complexity: O(n) since we are creating a new array, memory that is required to store the new array will depend on the length of the array
def sort_by_length(my_sentence)
  new_array = []

  my_sentence = my_sentence.split(" ")
  my_sentence.each do |word|
    if new_array.length == 0
      new_array.push(word)
    elsif word.length <= new_array.first.length
      new_array.unshift(word)
    elsif word.length >= new_array.last.length
      new_array.push(word)
    else 
      new_array.each do |term|
        if word.length < term.length
          placement = new_array.index(term)
          new_array.insert(placement, word)
          break
        end 
      end 
    end 
  end 
  return new_array
end