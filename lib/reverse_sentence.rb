# A method to reverse the words in a sentence, in place.
# Time complexity: O(n)
# Space complexity: O(1)
def reverse_sentence(my_sentence)
 
  if my_sentence == nil
    return nil
  elsif 
    my_sentence == ""
    return ""
  end

  array = my_sentence.split(/(\S*|\s*)/) # Split by each word and each space
  i = 0

  array.each do |match|
    position = -i + my_sentence.length - match.length
  
    my_sentence[position...position+match.length] = match
    i += match.length
  end
end
