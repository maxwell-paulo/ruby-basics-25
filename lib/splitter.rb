def size_splitter(array, size)
  # TODO: Return an array of two arrays, the first containing
  #       words of length `size`, the second containing all the other words
  #       In addition to this split, each array should be *sorted*.
  first_array = []
  second_array = []
  array.each do |c|
    if c.length <= size && c.length > 1
      first_array << c
    else
      second_array << c
    end
  end

  [first_array.sort, second_array.sort]
end

def block_splitter(array)
  # TODO: Return an array of two arrays, the first containing
  #       elements for which the given block yields true,
  #       the second containing all the other elements.
  #       No sort needed this time.

  first_array = []
  second_array = []
  array.each do |c|
    if yield(c)
      first_array << c
    else
      second_array << c
    end
  end

  [first_array, second_array]
end
