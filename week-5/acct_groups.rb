# CHALLENGE 5.6

# Pseudocode

=begin

Input: Strings
Output: Array
Steps:
1. DEF Method groups
2. Convert string into an array
3. Shuffle array objects
4. WHILE array is 5 or greater, place the first 5 strings in a seperate array.
5. ELSE put the remainder objects one by one into the arrays starting from beginning to end.
6. END method
	
=end


# Initial Solution
def acct_groups (string)
	array = string.split(", ")
	array.shuffle!
	
	if array.length % 4 == 0
		array.each_slice(4) do |a,b,c,d|
			p [a,b,c,d]
		end
	elsif array.length % 5 == 0
		array.each_slice(5) do |a,b,c,d,e|
			p [a,b,c,d,e]
		end
	else
		remainder = array.length % 5
		extra = array.last(remainder)
		array.drop(remainder)
		array.each_slice(5) do |a,b,c,d,e|
			p [a,b,c,d,e]
		end
		until extra.length == 0
			extra.each do |x|
			counter = 0
			array[counter] << x[counter]
			counter += 1
			end
		end
	end
end

puts acct_groups("kunal patel, elon musk, steve jobs, larry page, akshar, kushal, jay, darshan, luke, chris, alex")


# Refactored Solution

# Reflection

=begin

1. What was the most interesting and most difficult part of this challenge?


2. Do you feel you are improving in your ability to write pseudocode and break the problem down?


3. Was your approach for automating this task a good solution? What could have made it even better?


4. What data structure did you decide to store the accountability groups in and why?


5. What did you learn in the process of refactoring your initial solution? Did you learn any new Ruby methods?

=end