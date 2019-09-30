# A method which will return an array of the words in the string
#  sorted by the length of the word.
# Time complexity: ?
# Space complexity: ?


# Sky_array =[ The sky is blue ].split (“ “)
# => [“the”, “sky”, “is”, “blue"]
# sky_array =  3  3  2  4#character count
# find min, then find max
#range loop, min to max, 
# Output = [ is the sky blue ]

sky_arr = "the sky is blue"
def sort_by_length(my_sentence)
  return nil if my_sentence == nil
  final_arr = []
  sky_arr = my_sentence.split(" ")
  length_arr = sky_arr.map do |word|
    word.length
  end
  
  min = length_arr.min 
  max = length_arr.max
  
  (min..max).each do |length|
    sky_arr.each do |word|
      if word.length == length
        final_arr << word
      end
    end
  end
  return final_arr
end
puts sort_by_length(sky_arr)