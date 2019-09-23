# A method to reverse the words in a sentence, in place.
# Time complexity: o(n)
# Space complexity: o(n)
def reverse_sentence(my_sentence)

 unless my_sentence == nil 
    j = -1
    strings = my_sentence.scan(/(\s*)(\w*'*\w+[!,.?]*)(\s*)/).flatten
    length = strings.length

    (length / 2).times do |i|
      temp = strings[i]
      strings[i] = strings[j]
      strings[j] = temp
      j -= 1
    end
    new_string = strings.join
    new_string.length.times do |i|
      my_sentence[i] = new_string[i]
    end
  end
  return my_sentence
end
