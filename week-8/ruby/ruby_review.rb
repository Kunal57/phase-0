# I worked on this challenge [by myself].
# This challenge took me [1.5] hours.

# Pseudocode

# INPUT: Integer
# OUPUT: Boolean
# Generate fib numbers less than or equal to input
# Test whether input one of the generated fib numbers
# Return boolean true if is fib number
# Return boolean false if not a fib number

# Initial Solution

def is_fibonacci?(num)
  fibs = [0, 1]
  if (num != 0) && (num !=1 )
    while fibs.last < num
      fibs <<  fibs.inject {|x, y| x+y}
      fibs.shift
      if num == fibs.last
        return true
      end
    end
    return false
  else true
  end
end



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