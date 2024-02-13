# https://leetcode.com/problems/product-of-array-except-self/
# Input: nums = [1,2,3,4]



# def product_except_self(nums)
#   num_array = []
#   nums.each do |num|
#     new_nums = nums.reject do |number| 
#       number == num
#     end
#     if new_nums.empty? == true
#       new_nums = [0]
#     end
#     num_array << new_nums.reject.inject(:*)
#   end
#   return num_array
# end










def product_except_self(nums)
  array = []
  nums.each do |num|
    new_nums = nums.reject do |number| 
      number == num
    end
    array << new_nums.inject(:*)
  end
end
nums = [1,2,3,4]
# Output: [24,12,8,6]
p product_except_self(nums)