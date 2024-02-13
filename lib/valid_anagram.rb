# https://leetcode.com/problems/valid-anagram/

# Given two strings s and t, return true if t 
# is an anagram of s, and false otherwise.

# An Anagram is a word or phrase formed by rearranging 
# the letters of a different word or phrase, typically 
# using all the original letters exactly once.

# Example 1:
# Input: s = "anagram", t = "nagaram"
# Output: true

# Example 2:
# Input: s = "rat", t = "car"
# Output: false

def is_anagram(s,t)
  s.chars.tally == t.chars.tally
end

# def is_anagram(s, t)
#   s.split(//).sort == t.split(//).sort
# end

# s = "anagram"
# t = "nagaram"
s = "rat"
t = "car"
p is_anagram(s, t)










# def is_anagram(s, t)
#   if s.length >= 1 && t.length <= 5 * 10**4
#     s_split = s.split(//).sort
#     t_split = t.split(//).sort
#     if s_split == t_split
#     return true
#     else
#     return false
#     end
#   end
# end

# s = "anagram"
# t = "nagaram"
# p is_anagram(s, t)