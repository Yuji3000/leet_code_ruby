# https://leetcode.com/problems/valid-palindrome/

# A phrase is a palindrome if, after converting all uppercase 
# letters into lowercase letters and 
# removing all non-alphanumeric characters,
#  it reads the same forward and backward. 
#  Alphanumeric characters include letters and numbers.

# Input: s = "A man, a plan, a canal: Panama"
# Output: true
# Explanation: "amanaplanacanalpanama" is a palindrome.

#s = "A man, a plan, a canal: Panama"
def is_palindrome(s)
  character_string = s.gsub(/[^0-9a-z]/i, '').downcase
  # character_string = "amanaplanacanalpanama"
  left = 0
  right = character_string.length - 1

  while left < right
    if character_string[left] == character_string[right]
      left += 1
      right -= 1
    else
      return false
    end
  end
  return true
end

# s = "A man, a plan, a canaasdffffffma"
s = "A man, a plan, a canal: Panama"
# Output: true
p is_palindrome(s)