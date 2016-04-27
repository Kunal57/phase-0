# 6.2 Die Class: Arbitrary Symbols

=begin

PSEUDOCODE
Input: An Array of Strings
Output: A String
Steps:
1. Make a Class called 'Die'
2. Initialize the class with a Array_of_strings parameters
3. Define a method called 'sides' that returns the number of strings in the array
4. Define a roll method that returns one of the strings as a result.
5. End the Class

=end

# Initial Solution

class Die
  def initialize(array_of_strings)
    if array_of_strings.empty?
      raise ArgumentError.new("Wrong Number of Arguments")
    else
      @array_of_strings = array_of_strings
    end
  end

  def sides
    @array_of_strings.length
  end

  def roll
    rand_array = @array_of_strings.shuffle
    rand_array[0]
  end
end

# DRIVER CODE

die = Die.new(["K","U","N","A","L"])

p die.sides
p die.roll

# Refactored Solution

class Die
  def initialize(labels)
  	@labels = labels
  	if @labels.empty?
  		raise ArgumentError.new ("Input cannot be empty.")
  	end
  end

  def sides
  	return @labels.length
  end

  def roll
  	mixed_labels = @labels.shuffle
  	return mixed_labels[0]
  end
end

die = Die.new(["Elon", "Musk", "Steve", "Jobs"])
p die.sides
p die.roll

# Reflection

=begin

1. What were the main differences between this die class and the last one you created in terms of implementation? Did you need to change much logic to get this to work?

There weren't many differences between this die class and the die class from week-5. There were only a few minor changes to get this die class to function in the same way that the previous die class had function. These changes needed to be made due to the fact that this array would have strings as inputs instead of integers. The first change was to update the Argument Error to display an error if the array was empty. The second was to display the length of the array using the .length method. The third change was to shuffle the array and return the first number instead of simply relying on the .rand method to return a random number. Not much of the logic needed to be change to figure out the solution.

2. What does this exercise teach you about making code that is easily changeable or modifiable?

This challenge teaches that code can be easily changeable/modifiable if it is written and organized properly. Organizing code into methods and indentation is important so the code can be easily reviewed and modified. The code also needs to effectively communicate what type of object is being passed through the code. Arrays, integers, strings all have different methods that can be called on them and making the object structure evident can make it easier for a developer to change and modify the code. Organizing the code into separate methods is also a big help because developers can go back and change only the methods that need to be changed.

3. What new methods did you learn when working on this challenge, if any?

In this challenge, I learned about the shuffle method. I had previously seen this method used in code that I had worked with and I though it could be utilized in this challenge to display a random array. Instead of randomizing the output that was displayed, I chose instead to shuffle the array and return the first object of the array. This seemed to do the trick as all of the tests passed.

4. What concepts about classes were you able to solidify in this challenge?

I was able to solidify the concept of initializing a class and defining different methods for the class. The initialization takes place first and any argument errors should be listed there to prevent the wrong object from being inputted. The methods should follow such as the sides & roll methods. I think I gained a much better understanding of creating classes and how they're utilized in the ruby language.

=end