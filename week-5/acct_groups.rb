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
