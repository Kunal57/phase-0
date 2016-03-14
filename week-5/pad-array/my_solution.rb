# Pad an Array

# I worked on this challenge [by myself]

# I spent [] hours on this challenge.


# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.



# 0. Pseudocode

# What is the input?
# An Array.
# What is the output? (i.e. What should the code return?)
# An Array with the new padded values.
# What are the steps needed to solve the problem?
# Define method pad!
# Determine size of array.
# Compare size of array to minumium size.
# If the minimum size is more than the size of the array, insert value into array until the minimum size is fulfilled.
# Return the new padded array.
# End


# 1. Initial Solution
def pad!(array, min_size, value = nil) #destructive
 if array.length >= min_size
   p array
 else array.length < min_size
   padding = min_size - array.length
   padding.times do |x|
    array.push(value)
    end
  end
  p array
end

puts pad!([1,2,3],5)
puts pad!([1,2,3],5,"apple")


def pad(array, min_size, value = nil) #non-destructive
 clone = array.clone
  if array.length >= min_size
    p clone
  else
    new = array.clone
    padding = min_size - array.length
    padding.times do |x|
    new.push(value)
    end
    return new
  end
end

puts pad([1,2,3],5)
puts pad([1,2,3],5,"apple")

# 3. Refactored Solution

# Method that was not destructive. Need to figure out why this one is non-destructive and the first method is destructive.

# def pad!(array, min_size, value = nil) #destructive
#   if array.length >= min_size
#     array
#   else array.length < min_size
#    padding = min_size - array.length
#    padding.times do |x|
#    array.push(value)
#    end
#   end
# end


# 4. Reflection

=begin
1. Were you successful in breaking the problem down into small steps?

Yes. We broke the problem down into smaller steps and focused on writing code for each step as opposed to trying to write the code for the whole problem. This helps make complicated problems into smaller manageable problems. Pseudocode is a very helpful for problems like these.  

2. Once you had written your pseudocode, were you able to easily translate it into code? What difficulties and successes did you have?

The pseudocode was great and is defiantly made the transition to code easier. Pseudocode doesn't fully narrate the syntax to be used but it does organize my thought process & makes writing code for each step easier. The difficulties we had were to recognize the correct methods and objects to use in our solution according to our pseudocode.

3. Was your initial solution successful at passing the tests? If so, why do you think that is? If not, what were the errors you encountered and what did you do to resolve them?

Our initial solutions didn't pass the tests. For our pad! method, our code wasn't destructive because we hadn't returned the array at the end of our method. As a result, our return was nil and didn't change the original array at all with our new additions. Our second pad method didn't pass the tests because it was destructive. This was because in the first part of our solution (if) we returned the original array if the minimum size was below the array length. As a result, the original array was technically modified and returned so it was destructive. We fixed the problem by cloning the array to start the method, and returning it instead of the original array. This way, the new cloned array did not destroy the original array.

4. When you refactored, did you find any existing methods in Ruby to clean up your code?

# 

5. How readable is your solution? Did you and your pair choose descriptive variable names?

Our solution is very readable. We used indentation and laid the code out in a neat and organized way for both methods. We also chose descriptive names such as 'padding' to denote the padded array and 'clone' to denote the cloned copy of the original array. These are descriptive to the purpose they serve and can help the developer identify the contents of the variable.

6. What is the difference between destructive and non-destructive methods in your own words?

Destructive methods are methods that change the input of the method for future use. The input is altered through the process of the method and the output becomes the permanent. This is different than a non-destructive method which doesn't change the input for future use. The input goes into the method, and produces a new output. The difference is that when the original input is displayed, it will be as it was before being processed through the non-destructive method. Basically, a destructive method permanently changes the value while a non-destructive method leaves the original value as is.

=end