# https://leetcode.com/problems/two-sum/

# Example 1:
# Input: nums = [2,7,11,15], target = 9
# Output: [0,1]
# Explanation: Because nums[0] + nums[1] == 9, we return [0, 1].

# Example 2:
# Input: nums = [3,2,4], target = 6
# Output: [1,2]

# Example 3:
# Input: nums = [3,3], target = 6
# Output: [0,1]

# Given an array of integers nums and an integer target,
#  return indices of the two numbers such that they add 
#  up to target.

# You may assume that each input would have exactly one solution,
#  and you may not use the same element twice.

# You can return the answer in any order.

# def two_sum(nums, target)
#   nums.each_with_index do |number, index|
#     second_num = target - number
#     second_index = nums.index(second_num)
#     next if second_index.nil? || second_index == index
#     return [index, second_index]
#   end
# end

def two_sum(nums, target)
  hash = {}
  nums.each_with_index do |num, i|
    if hash.key?(target - num)
          return [hash[target-num],i]
      else
          hash[num] = i
      end
  end
end

nums = [2,7,11,15]
target = 9
p two_sum(nums, target)







# def two_sum(nums, target)
#   hash = {}
#   nums.each do |num|
#     require 'pry'; binding.pry
    
#   end
# end

# nums = [2,7,11,15]
# target = 9
# p two_sum(nums, target)