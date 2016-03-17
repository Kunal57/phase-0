# Die Class 1: Numeric

# I worked on this challenge [by myself]

# I spent [1] hours on this challenge.

# 0. Pseudocode

# Input: An integer 
# Output: An integer
# Steps: 
# Declare sides
# Raise argument if number is less than one
# Define sides
# Define roll
# End Class


# 1. Initial Solution

class Die
  def initialize(sides)
    @sides = sides
    if @sides < 1
    	raise ArgumentError.new("Needs to have more than one side")
    end
  end

  def sides
    @sides
  end

  def roll
    rand(1..@sides)
  end
end

die = Die.new(6)
puts die.sides
puts die.roll



# 3. Refactored Solution

class Die
	def initialize(sides)
		@sides = sides
		raise ArgumentError if @sides < 1
	end

	def sides
		@sides
	end

	def roll
		rand(1..@sides)
	end
end

# 4. Reflection

=begin

1. What is an ArgumentError and why would you use one?

ArgumentErrors are raised when the argument is wrong. You would use one to specify the input of an argument. In this case, a side value below 1 would mean there are 0 or negative sides which isn't possible for a die to have. As a result, anything the user inputs a side value below one, an argument error is raised.

2. What new Ruby methods did you implement? What challenges and successes did you have in implementing them?

I implemented the rand method from the Ruby Docs. The rand method returns a random number from the range you specify. It was fairly easy to interpret and implement from the ruby docs.

3. What is a Ruby class?

A Class is used to construct an object in Ruby. The class is a blueprint for an object.

4. Why would you use a Ruby class?

You would use a class to make it easier for you to make dozens of different objects of the same structure. For example, you can use a buttons class to create different buttons, each having a different color, size, shape, etc.

5. What is the difference between a local variable and an instance variable?

A instance variable is set with a @ sign and while a local variable doesn't need the @ sign. The difference is also in where the variable can be used which can be seen below. 

6. Where can an instance variable be used?

A local variable can only be used within the method in which it is defined. An instance variable on the other hand can be used anywhere in the instance of the class in which it is defined.

=end