# 4.5.3 Triangle Side Lengths

=begin

PSEUDOCODE
Input: 3 non-negative Integers
Output: Boolean
Steps:
1. Define method valid_triangle? taking in (side1, side2, side3) as parameters
2. IF side1 + side2 is greater than side3
3. AND side2 + side3 is greater than side1
4. AND side3 + side1 is greater than side2
5. RETURN true
6. ELSE RETURN false
7. END IF statement
8. END method

=end

# Initial solution

def valid_triangle?(side1, side2, side3)
	if ((side1 + side2 > side3) && (side2 + side3 > side1) && (side3 + side1 > side2))
		return true
	else
		return false
	end
end

#DRIVER CODE
p valid_triangle?(1,1,1)