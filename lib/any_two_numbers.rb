# Given a list of numbers and a number k,
# return whether any two numbers from the list add up to k.

# For example, given [10, 15, 3, 7] and k of 17,
#  return true since 10 + 7 is 17.
# Bonus: Can you do this in one pass?

[10, 15, 3, 7]
k  = 17
def any_two_numbers(array, k)
  array.each_with_index.any? do |number, index|
    # p number
    # p index
    difference = k - number 
    array.include?(difference) && number != array[index]
  end
end

k = 14
array = [10, 15, 3, 7]
# expect false

p any_two_numbers(array, k)

# one pass with hash {number: difference}?