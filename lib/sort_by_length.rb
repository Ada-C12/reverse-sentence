def insert(x, arr)
  i = arr.find_index { |n| yield(n) > yield(x) }
  i ||= arr.length
  
  arr.insert(i, x)
end

def insertion_sort(arr, &block)
  arr.each_with_object([]) { |x, a| insert(x, a, &block) }
end

# A method which will return an array of the words in the string
#  sorted by the length of the word.
# Time complexity: O(n^2)
# Space complexity: O(n)
def sort_by_length(my_sentence)
  insertion_sort(my_sentence.split(' '), &:length)
end

