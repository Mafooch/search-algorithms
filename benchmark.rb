require 'benchmark'
require_relative 'linear_search.rb'
require_relative 'binary_search.rb'

name_to_find = "James"

unordered_names = IO.read('unordered_names.txt').split(',')
ordered_names = unordered_names.sort

Benchmark.bm(30) do |x|
  x.report("Unordered List Linear Search:") do
    linear_search(unordered_names, name_to_find)
  end
  x.report("Ordered List Linear Search:") do
    linear_search(ordered_names, name_to_find)
  end
  x.report("Ordered List Binary Search:") do
    binary_search(ordered_names, name_to_find)
  end
end
