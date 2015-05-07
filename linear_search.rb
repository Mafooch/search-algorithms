def linear_search(list_to_search, value_to_find)
  list_to_search.each_with_index do |current_value, current_index|
    return current_index if current_value == value_to_find
  end
end

# name_to_find = "James"
# names = IO.read('unordered_names.txt').split(',')
#
# found_at = linear_search(names, name_to_find)
#
# puts "Found '#{name_to_find}' at position #{found_at} in the list."
