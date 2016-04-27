# 6.3 Build a Simple Guessing Game

=begin

PSEUDOCODE
Input: An Integer.
Output: A Symbol & Boolean.
Steps:
1. Create a Class called 'GuessingGame'
2. Initialize it with a integer called 'answer'
3. Define a method called 'guess' that takes a 'guess' as a paramter
4. Return :high if the guess is larger than the answer, :low if the guess is lower than the answer, and :correct if the guess is equal to the answer.
5. Define a method called 'solved?' that returns a boolean if the answer is true or false.
6. End the methods and Class

=end

# Initial Solution

class GuessingGame

  def initialize(answer)
    @answer = answer
    @solved = false
  end

  def guess(guess)
    if guess > @answer
      @solved = false
      return :high
    elsif guess < @answer
      @solved = false
      return :low
    else
      @solved = true
      return :correct
    end
  end

  def solved?
    return @solved
  end

end

# DRIVER CODE

guessing_game = GuessingGame.new(23)

p guessing_game.guess(23)
p guessing_game.solved?
p guessing_game.guess(24)
p guessing_game.solved?


# Refactored Solution

class GuessingGame
  def initialize(answer)
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