# 4.5.4 Detecting Leap Years

=begin

PSEUDOCODE
Input: Integer (A Year)
Output: Boolean
Steps:
1. Define method leap_year? with (year) parameter
2. IF year is evenly divided by 100 and 400, return true
3. IF year is evenly divided by 100 and not 400, return false
4. IF year is evenly divided by 4, return true
5. ELSE return false
6. END IF statement
7. END method

=end

#Initial Solution

def leap_year?(year)
	if ((year % 100 == 0) && (year % 400 == 0))
		return true
	elsif ((year % 100 == 0) && (year % 400 != 0))
		return false
	elsif (year % 4 == 0)
		return true
	else
		return false
	end
end

# DRIVER CODE

p leap_year?(2016)
		