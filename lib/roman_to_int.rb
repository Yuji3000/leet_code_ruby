# https://leetcode.com/problems/roman-to-integer/

# 46 = X(10)L(50)V(5)I(1)
# if there is a symbol on left that is lower than right, they are paired(subtracted)
#  if symbol on left is higher than right paired(addition)

def roman_to_int(s)
  roman_nums = {
      "I" => 1,
      "V"=> 5,
      "X" => 10,
      "L" => 50,
      "C" => 100,
      "D" => 500,
      "M" => 1000
  }
  
  split_chars = s.split("")
  # 46 = X(10)L(50)V(5)I(1)


  num_array = []

  split_chars.each do |char|
      num_array << roman_nums[char]
  end
  
  total = 0
  num_array.each_with_index do |num, index|
      if num_array[index + 1].nil? || (num_array[index + 1] && num >= num_array[index + 1])
          total += num 
      else
          total -= num 
      end
  end
  
  return total
  
end