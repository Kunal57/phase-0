# Calculate the Median

=begin

PSEUDOCODE
Input: An Array
Output: A Integer
Steps:
1. Define a method called 'median' that takes an Array as a parameter
2. Define variable called length equal to the median length
3. IF the length % by 2 equals 0, take add the middle two numbers and divide by 2 to give you the median.
4. ELSE if the length % by 2 equals 1, take the index of the median length/2 + .5 and return that as the median
5. End the method

=end

# Initial Solution

def median(array)
	array.sort!
	if array.length % 2 == 0
		median_sum = 0.0
		median_sum += array[array.length/2]
		median_sum += array[(array.length/2)-1]
		return (median_sum/2)
	else
		return array[(array.length/2)]
	end
end

p median(["Kunal","Elon","Musk","Steve","Jobs"])
p median([1,2,3,4,5,6,7,8,9,10])