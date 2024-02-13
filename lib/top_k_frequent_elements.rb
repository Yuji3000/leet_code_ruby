# https://leetcode.com/problems/top-k-frequent-elements/
# Input: nums = [1,1,1,2,2,3], k = 2
# Output: [1,2]


def top_k_frequent(nums, k)
  #sort_has turns nums = [1,1,1,2,2,3]
  #Into {1=>[1, 1, 1], 2=>[2, 2], 3=>[3]}
  sort_hash = nums.group_by do |num|
    num
  end
  # value_sort turns sort_hash 
  # into [[3], [2, 2], [1, 1, 1]]
  value_sort = sort_hash.values.sort_by do |num|
    num.length
  end
  # takes [[3], [2, 2], [1, 1, 1]]
  # to [1, 2, 3]
  c = value_sort.reverse.map do |array|
    array.first
  end
  # c.take(k) takes the first k number of elements from the c array
  return c.take(k)
  require 'pry'; binding.pry
end

nums = [1,1,1,2,2,3]
k = 2
p top_k_frequent(nums, k)