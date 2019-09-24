def find_smallest(array)
  smallest = array[0]
  i = 0

  while i < array.length - 1
    if array[i] < smallest
      smallest = array[i]
      smallest_index = i
    end
    smallest_index += 1
  end
  return array
end

p find_smallest([3, 5, 7, 1])