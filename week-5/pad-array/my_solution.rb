# Pad an Array

# I worked on this challenge [by myself, with: ]

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
  	array
  else array.length < min_size
   padding = min_size - array.length
   padding.times do |x|
   array.push(value)
   end
  end
end

puts pad!([1,2,3], 5, "apple")

def pad(array, min_size, value = nil) #non-destructive
  if array.length >= min_size
  	array
  else array.length <= min_size
   padding = min_size - array.length
   padding.times do |x|
   array.push(value)
   end
  end
end

# 3. Refactored Solution



# 4. Reflection



# # 1. Initial Solution
# def pad!(array, min_size, value = nil) #destructive
#  if array.length >= min_size
#    p array
#  else array.length < min_size
#    padding = min_size - array.length
#    padding.times do |x|
#    	array.push(value)
#    end
#  end
#  p array
# end

# pad!([1,2,3],5)
# pad!([1,2,3],5,"apple")


# def pad(array, min_size, value = nil) #non-destructive
#  pad_size = min_size - array.length
#  nondes = Array.new(pad_size.to_i, value)
#  if array.length >= min_size || min_size == 0
#    return array
#  else
#    array + nondes
#  end
# end

# pad([1,2,3],5)
# pad([1,2,3],5,"apple")