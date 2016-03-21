# Build a simple guessing game


# I worked on this challenge [by myself].
# I spent [1] hours on this challenge.

# Pseudocode

# Input: Integer.
# Output: A symbol or boolean.
# Steps:
# Initialize Class
# Def Guess 
# if integer < @answer return :low or if integer > answer return :high
# else return correct
# If guess is correct, return true or false


# Initial Solution

class GuessingGame
  def initialize(answer)
    # Your initialization code goes here
    @answer = answer
  end

  def guess(integer)
    @guess = integer 
  	 if integer < @answer
      :low
  	 elsif integer > @answer
      :high
  	 else
      :correct
  	end
  end

  def solved?
    if @answer == @guess
    	return true
    else
    	return false
    end
  end
end

# Refactored Solution

class GuessingGame
  def initialize(answer)
    # Your initialization code goes here
    @answer = answer
  end

  def guess(integer)
    @guess = integer 
  	 if integer < @answer
      :low
  	 elsif integer > @answer
      :high
  	 else
      :correct
  	end
  end

  def solved?
    if @answer == @guess
    	return true
    else
    	return false
    end
  end
end

# Reflection

=begin

1. How do instance variables and methods represent the characteristics and behaviors (actions) of a real-world object?

The instance variable represents attributes of an object in real the real world. Instance methods represent the behavior of an object in the real world. 

2. When should you use instance variables? What do they do for you?

Instance variables should be used when accessing information in the same class. The allow you specify methods to specific variables. As mentioned above, this allows you to call methods on variables with different attributes.

3. Explain how to use flow control. Did you have any trouble using it in this challenge? If so, what did you struggle with?

Control flow is using branches to determine the output of a given input. Depending on the input, control flow can guide the output to be numerous different results. I used if-else statements within my code to determine if the input was too low, too high, or the correct answer. Then in my .solved? method, I used control flow to either return true or false depending on if the solution was correct or incorrect.

4. Why do you think this code requires you to return symbols? What are the benefits of using symbols?

I think this code requires us to use symbols because they are easier to utilize. The symbol outputs can be called upon in additional code to make it easier to translate and process the data. Symbols are also permanent and can't be changed. Outputting a permanent result challenge is necessary as the user cannot manipulate the result once entered.

=end	