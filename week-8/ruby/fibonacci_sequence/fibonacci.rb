# Fibonacci Sequence

=begin

PSEUDOCODE
Input: An integer
Output: Boolean
Steps:
1. Define a method called 'is_fibonacci?' with a parameter that takes an integer
2. Set a counter variable.
3. WHILE counter < num
4. Set a fibonacci_num variable = [0,1]
5. Add the -2 index and -1 index from the array together and push into back into the array
6. IF the num equals a fibonacci number, return true
7. ELSE return false
8. Increment counter by 1
9. End IF statement, End method

=end

# Initial Solution

def is_fibonacci?(num)
fibonacci_numbers = [0,1]
  until fibonacci_numbers[-1] > num
    next_number = fibonacci_numbers[-2]+fibonacci_numbers[-1]
    fibonacci_numbers << next_number
    p fibonacci_numbers
  end
    if fibonacci_numbers.include?(num)
      return true
    else
      return false
    end
end

p is_fibonacci?(144)



# Refactored Solution

def is_fibonacci?(num)
  fibs = [1, 0]
  while num > fibs.last
    x, y = fibs.pop(2)
    fibs.push(x, y, x + y)
  end
  return true if (num == fibs.last)
  false
end

# Reflection
=begin

What concepts did you review or learn in this challenge?

I learned about methods, operators, arrays, the .push method, variables, booleans, and iterations. I also reviewed my knowledge of the Ruby syntax.

What is still confusing to you about Ruby?

I think my knowledge of Ruby iteration is below-par. I'm still not comfortable with iterating over arrays, and hashes and I need to review the Ruby docs often.

What are you going to study to get more prepared for Phase 1?

To help me prepare for Phase 1 and review ruby, I'm going to go through the challenges from the previous ruby weeks. I'm also going to reread the chapters from out required reading materials and also research ruby iterations on Google to gain a better understanding. 

=end