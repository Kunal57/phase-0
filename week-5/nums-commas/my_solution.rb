# Numbers to Commas Solo Challenge

# I spent [] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# 0. Pseudocode

# What is the input? 
# An integer.
# What is the output? (i.e. What should the code return?)
# An comma-separated integer as a string.
# What are the steps needed to solve the problem?
# Define method separate_comma.
# Convert integer to string (to add comma's).
# Determine length of string.
# If the string 4, we need to add a comma inbetween the 1st and second digit.
# If the string is 7, we need to add a comman inbetween the 1st and second and also the 4th and 5th digits.
# Continue this same sequence until the tests pass. 
# End method.

# 1. Initial Solution

def separate_comma (integer)
	int = integer.to_s
	spot = (int.length - 3).to_i
	spot2 = spot - 3
	spot3 = spot2 - 3
	spot4 = spot3 - 3
	spot5 = spot4 - 3
	if int.length <=3
		int
	elsif int.length >= 4 && int.length <= 6
		int.insert(spot, ",")
	elsif int.length >= 7 && int.length <= 9
		int.insert(spot, ",")
		int.insert(spot2, ",")
	elsif int.length >= 10 && int.length <= 12
		int.insert(spot, ",")
		int.insert(spot2, ",")
		int.insert(spot3, ",")
	elsif int.length >= 13 && int.length <= 15
		int.insert(spot, ",")
		int.insert(spot2, ",")
		int.insert(spot3, ",")
		int.insert(spot4, ",")
	else int.length >= 16 && int.length <= 18
		int.insert(spot, ",")
		int.insert(spot2, ",")
		int.insert(spot3, ",")
		int.insert(spot4, ",")
		int.insert(spot5, ",")
	end
end

puts separate_comma(122223493812323971)

# 2. Refactored Solution




# 3. Reflection

=begin
	
1. What was your process for breaking the problem down? What different approaches did you consider?



2. Was your pseudocode effective in helping you build a successful initial solution?



3. What new Ruby method(s) did you use when refactoring your solution? Describe your experience of using the Ruby documentation to implement it/them (any difficulties, etc.). Did it/they significantly change the way your code works? If so, how?



4. How did you initially iterate through the data structure?



5. Do you feel your refactored solution is more readable than your initial solution? Why?



=end
