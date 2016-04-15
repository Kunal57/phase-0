# 4.6.5 Concatenate Two Arrays

=begin

PSEUDOCODE
Input: 2 Arrays
Output: 1 Array
Steps:
1. Define array_concat method that takes two arrays as parameters
2. Add array1 to array2
3. End method

=end

# Initial Solution

def array_concat(array1, array2)
	array1 + array2
end

# DRIVER CODE
p array_concat([1,2,3],[4,5,6])

# Refactor

def array_concat(array1, array2)
	array1.concat(array2)
end