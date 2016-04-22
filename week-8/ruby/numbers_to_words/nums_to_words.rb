# Numbers to English Words

=begin

PSEUDOCODE
Input: An integer.
Output: A string.
Steps:
1. Define method 'in_words' with a parameter that takes an integer
2. Define an 'single_nums' array that goes from 0-9.
3. string_num = integer.to_s
4. IF string_num.length == 1
5. return single_nums[integer]
6. ELSIF string_num.length == 3
7. return 'One Hundred'
8. ELSE 

=end

# Initial Solution

def in_words(number)
	single_nums = ["zero","one","two","three","four","five","six","seven","eight","nine"]
	double_nums = ["zero","ten","twenty","thirty","forty","fifty","sixty","seventy","eighty","ninety"]
	split_num = number.to_s.split("")
	first_digit = split_num[0].to_i
	second_digit = split_num[1].to_i 
	if split_num.length == 1
		return single_nums[number]
	elsif split_num.length == 3
		return "one hundred"
	elsif number == 16 || number == 17 || number == 14 || number == 19
		return single_nums[second_digit] << "teen"
	elsif number == 11
		return "eleven"
	elsif number == 12
		return "twelve"
	elsif number == 13
		return "thirteen"
	elsif number == 15
		return "fifteen"
	elsif number == 18
		return "eighteen"
	else
		if second_digit == 0
			return double_nums[first_digit]
		else
			word = double_nums[first_digit] << " " << single_nums[second_digit]
		end
	end
end


# DRIVER CODDE

p in_words(9)
p in_words(10)
p in_words(11)
p in_words(12)
p in_words(13)
p in_words(14)
p in_words(15)
p in_words(16)
p in_words(17)
p in_words(18)
p in_words(19)
p in_words(20)
p in_words(21)
p in_words(22)
p in_words(23)
p in_words(24)
p in_words(25)
