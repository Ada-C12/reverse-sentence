
# A method to reverse the words in a sentence, in place.
# Time complexity: ?
# Space complexity: ?

def reverse_sentence(test_string)
  half = test_string.length / 2
  # loop through elements n/2 times (ignores central element if length is odd)
  half.times do |i|
    # swap all characters/whitespace ("  Yoda" => "adoY  ")
    test_string[i], test_string[-i-1] = test_string[-i-1], test_string[i]
  end
  
  # can't figure out how to reverse letters in each word :(
  
  return test_string
end

# per Dianna, I can reverse words in a new array and then reassign values to original array. Does this count as modifying in place? 