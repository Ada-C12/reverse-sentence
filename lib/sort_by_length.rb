# A method which will return an array of the words in the string
#  sorted by the length of the word.
# Time complexity: O(n2) because I use bubble sort for sorting words by their length
# Space complexity: O(n) because I create array output which contains n number of words in input string
def sort_by_length(my_sentence)
  raise ArgumentError if !my_sentence
  # I'm not sure if I can use .split() here. I can write my own split method
  # if .split() is not allowed here
  output = my_sentence.split(" ")
  length = output.length()

  if length > 0
    (0...length - 1).each do |i|
      swapped = false
      (0...length - i - 1).each do |j|
        first = output[j]
        second = output[j + 1]

        if first.length() > second.length
          output[j + 1] = first
          output[j] = second
          swapped = true
        end

      end

      break if !swapped
    end
  end
  
  return output
end
