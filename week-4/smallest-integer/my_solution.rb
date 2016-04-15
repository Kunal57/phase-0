# 4.6.1 Smallest Integer in Array

=begin

PSEUDOCODE
Input: Array of Integers
Output: Integer
Steps:
1. Define method smallest_integer with parameter of Array
2. Define variable called smallest_num
3. Define counter variable
4. WHILE counter < array.length
5.  IF Array[counter] < smallest_num
6. 		smallest_num = Array[counter] & increment counter by 1
7.  ELSE
8.     counter += 1
9.  END IF
10.END WHILE loop
11. p smallest_num
12. END method

=end

# Initial Solution

def smallest_integer(array)
	counter = 0
	smallest_num = array[0]
	while counter < array.length
		if array[counter] < smallest_num
			smallest_num = array[counter]
			counter += 1
		else
			counter += 1
		end
	end
	return smallest_num
end

# DRIVER CODE

smallest_integer([100,75,50,1,25])

# Refactor 

def smallest_integer(array)
	return array.min
end