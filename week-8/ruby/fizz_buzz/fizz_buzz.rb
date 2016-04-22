# FizzBuzz Super Edition

=begin

PSEUDOCODE
Input: An Array.
Output: An Array.
Steps:
1. Define method called 'super_fizzbuzz' that accepts an array as a paramter
2. Iterate through the array.
3. IF the value is a multiple of 3 & 5, return "FizzBuzz"
4. ELSIF the value is a multiple of 3, return "Fizz"
5. ELSIF the value is a multiple of 5, return "Buzz"
6. ELSE leave value as is
7. END IF statement
8. Print new awaay
9. End method

=end

# Initial Solution

def super_fizzbuzz(array)
	fizzbuzz_array = []
	array.each do |x|
		if ((x % 3 == 0) && (x % 5 == 0))
			fizzbuzz_array << "FizzBuzz"
		elsif (x % 3 == 0)
			fizzbuzz_array << "Fizz"
		elsif (x % 5 == 0)
			fizzbuzz_array << "Buzz"
		else
			fizzbuzz_array << x
		end
	end
	return fizzbuzz_array
end

p super_fizzbuzz([30, 9, 20, 1])