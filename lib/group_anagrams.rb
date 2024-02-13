# https://leetcode.com/problems/group-anagrams/

# def group_anagrams(strs)
#   if strs.kind_of?(Array) == true 
#     hash = strs.group_by do |string| 
#       string.downcase.chars.sort
#     end
#     require 'pry'; binding.pry
#     return hash.values
#   end
# end

# hash = {}
# hash[key] = value
{
 ["a", "e", "t"]=>["eat", "tea", "ate"],
 ["a", "n", "t"]=>["tan", "nat"],
 ["a", "b", "t"]=>["bat"]
}

# def group_anagrams(string)
#   anagrams = Hash.new
#   string.each do |s|
#     sorted_word = s.chars.sort.join
#     if anagrams.key?(sorted_word)
#       anagrams[sorted_word] << s
#     else
#       anagrams[sorted_word] = [s]
#     end
#   end
#   return anagrams.values
#   # require 'pry'; binding.pry
# end
# strings = ["eat","tea","tan","ate","nat","bat"]
# p group_anagrams(strings)

grocery_list = ["milk", "eggs", "eggs", "eggs", "eggs", "eggs", "eggs", "avocado", "avocado", "tortilla", "tortilla", "tortilla", "tortilla", "tortilla", "tortilla", "tortilla", "tortilla", "tortilla"]

grocery_items = {
  eggs: 6,
  tortilla: 9,
  avocado: 2,
  milk: 1,  
}

def make_hash(array)
  grocery_hash = {}
  hash_keys = array.uniq
  array.group_by |item|

  end
end

p make_hash(grocery_list)