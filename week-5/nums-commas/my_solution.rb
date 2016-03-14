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
# If the string is 7, we need to add a comma inbetween the 1st and second and also the 4th and 5th digits.
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

def separate_comma(integer)
	digit_s = integer.to_s.split(//)
	comma_separated_array = Array.new
	while digit_s.length > 3
		comma_separated_array.unshift(digit_s.pop(3))
		comma_separated_array.unshift(",")
	end
	comma_separated_array.unshift(digit_s)
	comma_separated_string =  comma_separated_array.join
	return comma_separated_string
end

puts separate_comma(122723823989823223493812323971)

# 3. Reflection

=begin
	
1. What was your process for breaking the problem down? What different approaches did you consider?

I spent some time thinking about this challenge for a couple of days. Originally, with my initial solution, I wanted to turn the number into a string and place a comma between each three numbers. I did this by specifying the location of the commas and then using if statements to designate if a comma should be placed or not depending on the string length. This approach worked but it wasn't the best solution as it took up many lines of code. 
When refactoring my solution, I took another approach. I split the number into a string and separated each character. I created a new array and while the characters were above 3, I used the .unshift method to place a commas after every third digit. In this way, the number input size didn't matter and the comma would be placed between the sets of three digits. The refactored solution was a much better option. 

2. Was your pseudocode effective in helping you build a successful initial solution?

Yes. Although my solution was a bit lengthy, the pseudocode helped me build a successful solution. It allowed me to think through the solution before actually coding and provided me with a set of instructions to write the code. The more and more I looked over my pseudocode, the better I was at refactoring and improving my initial solution. 

3. What new Ruby method(s) did you use when refactoring your solution? Describe your experience of using the Ruby documentation to implement it/them (any difficulties, etc.). Did it/they significantly change the way your code works? If so, how?

I used the .unshift ruby method when refactoring. The method inserted a comma every third digit to help place the comma in the correct location. This was a big upgrade from setting the placements of the commas as variables and then denoting when they should be used. As for the ruby documentation, it is very easy to use. At first, I thought that it was complicated with all of the methods and descriptions. The more and more I used it, the more I felt comfortable with it. The .unshift method significantly changed how my code worked. I restructured my pseudocode for my refactoring, and also implemented the .unshift method. Both of these changes contributed to making my code run smoother and look more organized. 

4. How did you initially iterate through the data structure?

Initially, I didn't really iterate through the data structure. I called If Statements and inserted the commas in certain locations. In the refactoring, I used a while loop to iterate through the characters till 3 or fewer characters remained. I inserted a comma for each three digits to produce my solution.

5. Do you feel your refactored solution is more readable than your initial solution? Why?

Yes. As I mentioned above, my refactored solution is much more efficient and readable than my initial solution. The reason for this is due to the fact that I restructured my steps for the solution. Instead of utilizing the if statement, I combined the while loop with the .unshift method to simply insert commas every third digit. This meant that I could input a 100 digit number and still produce a string with commas separating the integers. With my initial solution this wouldn't have been possible without more lines of code. 

=end
