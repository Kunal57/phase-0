# 4.5.5 Detecting Simple Substrings

=begin

PSEUDOCODE
Input: String (An Address)
Output: String
Steps:
1. Define method welcome that accepts an (address) as a parameter
2. IF the address contains "CA" then return "Welcome to California"
3. ELSE return "You should move to California"
4. END IF statement
5. END method

=end

# Initial Solution

def welcome(address)
	if ((address.include? "CA") || (address.include? "California"))
		return "Welcome to California"
	else
		return "You should move to California"
	end
end

# DRIVER CODE

p welcome("1 Rocket Road, Hawthorne, California")
