# 4.6.4 Longest String in Array

=begin

PSEUDOCODE
Input: An array of strings
Output: A string
Steps:
1. Define method longest_string that takes an (array) of strings as a parameter
2. Set counter equal to 0
3. Set big_string variable = array[0]
4. WHILE counter is less than array.length
5. IF array[counter].length > big_string
6. big_string = array[counter]
7. Increment counter by 1
8. ELSE increment counter by 1
9. END IF statement & WHILE loop
10. p big_string
11. End method

=end

# Initial Solution

def longest_string(array)
	counter = 0
	big_string = array[0]
	while counter < array.length
		if array[counter].length > big_string.length
			big_string = array[counter]
			counter += 1
		else
			counter += 1
		end
	end
	p big_string
end

# DRIVER CODE
longest_string(["kunal","patel","spacex","elon","musk"])

# Refactor

def longest_string(array)
	array.max do |x,y|
		x.length <=> y.length
	end
end