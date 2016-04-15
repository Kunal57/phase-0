# 4.5.2 Calculate a Letter Grade

=begin

PSEUDOCODE
Input: Integer
Output: String
Steps:
1. Def method get_grade that accepts a (average) parameter
2. case statement average
3. When average > 89, return 'A'
4. When average > 79, return 'B'
5. When average > 69, return 'C'
6. When average > 59, return 'D'
7. When average > 0, return 'F'
8. Else puts "Not a valid input."
9. End case statement
10. End Method

=end

# Initial Solution

def get_grade(average)
	case
	when average > 89
		return 'A'
	when average > 79
		return 'B'
	when average > 69
		return 'C'
	when average > 59
		return 'D'
	when average > 0
		return 'F'
	else
		puts "Not a valid input."
	end
end

# DRIVER CODE
p get_grade(90)

