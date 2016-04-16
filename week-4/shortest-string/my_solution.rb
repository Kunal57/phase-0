# 4.6.3 Shortest String in Array

=begin

PSEUDOCODE
Input: An array of strings
Output: a String
Steps:
1. Define method shorest_string that takes a parameter (array) of strings
2. Set counter variable equal to 0
3. Set small_string variable equal to array[0]
4. WHILE counter < array.length
5. IF array[counter].length < small_string.length
6. set small_string equal to array[counter]
7. ELSE increment counter by 1
8. END IF statement
9. END WHILE loop
10. return small_string
11. END method

=end

# Initial Solution

def shortest_string(array)
	counter = 0
	small_string = array[0]
	while counter < array.length
		if array[counter].length < small_string.length
			small_string = array[counter]
			counter += 1
		else
			counter += 1
		end
	end
	p small_string
end

# DRIVER CODE
shortest_string(["elon","musk","steve","jobs","kp"])

# Refactor

def shortest_string(array)
	array.min do |x,y|
		x.length <=> y.length
	end
end
