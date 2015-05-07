def binary_search(list_to_search, value_to_find)
  low, high = 0, list_to_search.length
  middle = (low + high) / 2

  while (low <= high)
    middle = (low + high) / 2

    return list_to_search[middle] if list_to_search[middle] == value_to_find

    if list_to_search[middle] < value_to_find
      low = middle + 1 # search lower half
    else
      high = middle - 1 # search upper half
    end
  end

  nil
end

# ordered_names = IO.read('unordered_names.txt').split(',').sort
#
# puts binary_search(ordered_names, "Mark")
