# 4.6.2 Largest Integer in Array

=begin

PSEUDOCODE
Input: Array of integers
Output: integer
Steps: 
1. Define method largest_integer with a Array parameter
2. Set counter variable to 0
3. Set largest_num variable to array[0]
4. WHILE counter is less than the array length
5. IF array[counter] is greatest than the largest_num variable
6. Have largest_num = array[counter]
7. Increment the counter by 1
8. ELSE increment the counter by 1
9. END IF statement
10. END WHILE loop
11. return largest_num
12. END method

=end

# Initial Solution

def largest_integer(array)
	counter = 0
	largest_num = array[0]
	while counter < array.length
		if array[counter] > largest_num
			largest_num = array[counter]
			counter += 1
		else
			counter += 1
		end
	end
	p largest_num
end

# DRIVER CODE

largest_integer([1,100,175,94,68])

# Refactor

def largest_integer(array)
	array.max
end