# Example 1:

# Input: s = "()"
# Output: true
# Example 2:

# Input: s = "()[]{}"
# Output: true
# Example 3:

# Input: s = "(]"
# Output: false

def is_valid(s)
  brackets = {
    "(" => ")",
    "[" => "]",
    "{" => "}"
  }

  split_string = s.split("")
  false_count = 0
  split_string.each_slice(2) do |pair|
    if pair[1] != brackets.fetch(pair[0])
      false_count += 1
    else
      next
    end
  end

  return false_count == 0
end

s = "()[]{("
p is_valid(s)


# def is_valid(s)
#   brackets = {
#     "(" => ")",
#     "[" => "]",
#     "{" => "}"
#   }

#   split_string = s.split("")
#   false_count = 0
#   split_string.each_cons(2) do |pair|
#     require 'pry'; binding.pry
#     if pair[1] == brackets[pair[0]]
#       next
#     else
#       false_count += 1
#     end
#   end
#   if false_count == 0
#     return true
#   else
#     return false

#   end
# end

