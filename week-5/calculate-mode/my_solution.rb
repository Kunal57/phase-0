# Calculate the mode Pairing Challenge

# I worked on this challenge [by myself, with: ]

# I spent [] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented.



# 0. Pseudocode

=begin
1. What is the input?
An Array of numbers or strings.
2. What is the output? (i.e. What should the code return?)
An Array of most frequent numbers.
3. What are the steps needed to solve the problem?
-Define mode method that takes an Array as a parameter.
-Separate the array objects into Hash keys.
-Set the hash values to be one.
-Increment the hash values to increase by one each time the key is repeated in the array.
-Determine which frequency value is greatest.
-Display key associated to the value in an array.
-If their are equal values, display the all associated keys to the values.
-END method
=end


# 1. Initial Solution

def mode (array)
	freq = Hash.new(0)
	array.each do |k|
		freq[k] += 1
	end
	mod = []
	freq.each do |k, v|
		if v == freq.values.max
			mod << k
		end
	end
	return mod
end

puts mode ([1,2,3,1,2])

# 3. Refactored Solution


def mode(array)
  mode = array.inject(Hash.new(0)) { |h,v| h[v] = h[v] + 1; h}
  mode.select{ |h,v| v == mode.values.max }.keys
end


# 4. Reflection

=begin
	
1. Which data structure did you and your pair decide to implement and why?

My pair and I decided to implement a hash as our data structure so we could apply the object in our initial array as keys and account for their frequencies as the value to the keys. In this way, we could determine what objects appear the most in our array by looking at the frequency of the objects. 

2. Were you more successful breaking this problem down into implementable pseudocode than the last with a pair? 

I was less successful breaking this problem down into pseudocode than the last. I understood what needed to be down from the start in the last pairing challenge. As a result, I was able to write good pseudocode to help us write code for each individual step. In this challenge I was a little unsure about the second part of the code. I understood that each object needed to be broken down and a frequency needed to be added as a value. After that, I was stuck on how to call upon the greatest values and insert them into an array. Thankfully, my pair knew what steps to take and instructed me when writing the pseudocode. 

3. What issues/successes did you run into when translating your pseudocode to code?

Pseudocode is great because it allows me to think out the solution to the problem before actually diving into the code. It's also useful because general terminology is utilized to orchestrate the steps to solve the problem. The issue with pseudocode is that it doesn't instruct you on the structure of the code. Blocks of code need to structured in certain ways and the plain English of pseudocode doesn't satisfy the requirement. For example, to iterate over a hash, a key/value needs to be specified. A coder would have to have much more knowledge about the actual language to complete the problem than just the steps described in the pseudocode. These are some the the pros & cons I realized when utilizing pseudocode. 

4. What methods did you use to iterate through the content? Did you find any good ones when you were refactoring? Were they difficult to implement?

In our initial solution, we used a .each method to iterate over the content. This method was easy to implement because it was one of the first methods we learned about and I had a lot of practice utilizing it in other challenges. Iterating over each key to determine if the value was equal to the max value was fairly simple. When refactoring, we found the select method to do the same thing. The select method was a bit better as instead of iterating through each key to determine if the value was the greatest, the select method simply picked out the greatest values. It was essentially the same and even required the same number of lines of code, but it was something different that we learned about and implemented. The select method wasn't difficult at all to implement and the ruby docs provided a good understanding of how it would function. 
	
=end