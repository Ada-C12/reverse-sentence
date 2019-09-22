# A method which will return an array of the words in the string
#  sorted by the length of the word.
# Time complexity: ?
# Space complexity: ?
class WordLengthPair
  attr_accessor :word, :length
  
  def initialize(word)
    @word = word
    @length = word.length
  end
  
  
end

def sort_by_length(my_sentence)
  new_array = []
  words = my_sentence.split(/\.?\s+/)
  words.each do |word|
    new_array.push(WordLengthPair.new(word))
  end
  
  new_array.length.times do |x|
    while x > 0
      if new_array[x - 1].length > new_array[x].length
        new_array[x], new_array[x - 1] = new_array[ x - 1], new_array[x]
      else
        break
      end
      x -= 1
    end
  end
  
  return new_array.map{|x| x.word}
  
end
