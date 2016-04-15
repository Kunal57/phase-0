# 4.5.1 Good Guess

=begin

PSEUDOCODE
Input: Integer
Output: Boolean
Steps:
1. Def method called good_guess?
2. Set a paramter that accepts an integer
3. IF integer is eual to 42, return true
4. ELSE return false
5. END IF Statement
6. End Method

=end

# Initial Solution

def good_guess?(integer)
	if integer == 42
		return true
	else
		return false
	end
end

#DRIVER CODE

p good_guess?(42)