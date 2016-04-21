# Calculate a Letter Grade

=begin

PSEUDOCODE
Input: An Array
Output: A String
Steps:
1. Define Method called 'get_grade' that accepts an Array as a parameter
2. Iterate through all the array values and print out "Invalid Data in Array" if values are less than 0 or greater than 100.
3. Iterate through all the values in the array and add them to a sum variable
4. Divide the sum variable by the length of the array to find the average.
5. Use a case statement to print A, B, C, D, or F based on when conditions.
6. End the method

=end

# Initial Solution

def get_grade(array)
	array.each do |x|
		if (x < 0) || (x > 100)
			puts "Invalid Data in Array!"
		end
	end
	sum = 0
	array.each do |x|
		sum += x
	end
	grade = sum/(array.length)
	
	case 
	when grade > 89
		return "A"
	when grade > 79
		return "B"
	when grade > 69
		return "C"
	when grade > 59
		return "D"
	else
		return "F"
	end
end

p get_grade([80,100,100,50,50])