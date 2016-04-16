# 4.6.6 Count the Numbers in a Range

=begin

PSEUDOCODE
Input: An array of integers, a lower bound integer, and a upper bound integer
Output: an Integer
Steps:
1. Define method count_between that takes three parameters (array, lower_bound, upper_bound)
2. Set counter = 0
3. Set numbers = []
4. WHILE counter < array.length
5. IF array[counter] is less than or equal to the upper_bound integer and array[counter] is greater than or equal to the lower_bound integer
6. Set numbers equal to numbers plus the array[counter] & increment the counter by 1
7. ELSE increment the coutner by 1
8. END IF statement, END WHILE loop
9. return numbers length
10. END method.

=end

# Initial Solution

def count_between(array, lower_bound, upper_bound)
	counter = 0
	numbers = 0
	while counter < array.length
		if ((array[counter] <= upper_bound) && (array[counter] >= lower_bound))
		numbers += 1
		counter += 1
		else
			counter += 1
		end
	end
	return numbers
end

# # DRIVER CODE

p count_between([-1,1,25,75,101], 0, 100)

# Refactor

def count_between(array, lower_bound, upper_bound)
	array.count do |x|
		(lower_bound..upper_bound).include?(x)
	end
end