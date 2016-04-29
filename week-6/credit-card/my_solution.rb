# 6.7 Validate Credit Card

=begin

PSEUDOCODE
Input: string.
Output: Boolean.
Steps:
1. Create a class called CreditCard
2. Initialize the class with a parameter of a integer.
3. unless the integer.length == 16 raise an ArgumentError.new("Invalid Credit Card Number")
4. Method that Split the integer up. 
5. Multiple the odd integer indexes by 2
6. Method that Splits all the integers up and adds them up
7. Is the sum divisible by 10?
8. IF yes, return true, else return false.
9. 

=end

# Initial Solutions

class CreditCard

	def initialize(integer)
		unless integer.to_s.delete(" ").length == 16
			raise ArgumentError.new("Invalid Credit Card Input")
		end
		@integer = integer
	end

	def double_digits
		string_array = @integer.to_s.delete(" ").split("")
		string_array.map! do |x|
			if string_array.index(x).even?
				x.to_i * 2
			else
				x = x.to_i
			end
		end
		string_array
	end

	def sum_digits
		split = double_digits.join("").split("")
		sum = 0
		split.each do |x|
			sum = sum + x.to_i
		end
		sum
	end

	def total
		if sum_digits % 10 == 0
			true
		else
			false
		end
	end

	def check_card
		total
	end

end

# DRIVER CODE

credit_card = CreditCard.new("4563 9601 2200 1999")

p credit_card.check_card


# Refactored Solution

class CreditCard
	def initialize credit_card_num
		@credit_card_num = credit_card_num.to_s
		unless @credit_card_num.length == 16
			raise ArgumentError.new("Credit Card Number needs to be 16 digits")
		end
	end

	def check_card
		# Step 1
		split_num = @credit_card_num.split(//)
		split_num.map!.with_index do |x, y|
			x = x.to_i
			if y % 2 == 0
				x * 2
			else y % 2 != 0
				x
			end
		end

		# Step 2
		split_numb = split_num.join.to_s.split(//)
		sum = split_numb.inject(0) do |sum, x| 
			sum + x.to_i
		end

		return true if sum % 10 == 0
		return false
	end
end

# Reflection

=begin
	
1. What was the most difficult part of this challenge for you and your pair?

The most difficult part of this challenge was distinguishing between the numbers being strings or integers. To begin, we had integers, but to check the length we needed to convert the integer into a string. Then again we had to convert the integer into a string to split the integer up into individual numbers. When iterating through the array and multiplying the even index numbered by 2, we had to convert the strings back into integers. Most of our errors came from not having the object structured as a string or integer properly. This was our biggest challenge and we solved it more effectively as the challenge went on.

2. What new methods did you find to help you when you refactored?

When refactoring out the initial solution, we found the .inject method. The inject method allowed us to add up the sums of all of the integers one by one. Another method that we utilized was the .join and .split methods. This allowed us to join the array together to form one big integer, and then break each individual digit up. This allowed us to separate double digit integers so that we could proceed onto the next step of refactoring the individual integers.

3. What concepts or learnings were you able to solidify in this challenge?

I was able to solidify the concept of raising an ArgumentError. Raising the Argument Error in the challenge if the integer didn't equal 16 was fairly easy and I think I have a solid understanding of the concept now. Besides the Argument Error, I strengthen my ability to break down complex problems into smaller steps with pseudocode. My pair really helped me through the solution and he explained to me why certain steps would be more effective than others. This challenge was difficult but it taught me a lot about problem solving and iterating arrays.

=end