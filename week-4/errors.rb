# Analyze the Errors

# I worked on this challenge [by myself].
# I spent [#] hours on this challenge.

# --- error -------------------------------------------------------

cartmans_phrase = "Screw you guys " + "I'm going home."

# This error was analyzed in the README file.
# --- error -------------------------------------------------------

def cartman_hates(thing)
  while true
    puts "What's there to hate about #{thing}?"
  end
end

# This is a tricky error. The line number may throw you off.

# 1. What is the name of the file with the error?
#    errors.rb
# 2. What is the line number where the error occurs?
#    Line 175 (Actually on line 16)
# 3. What is the type of error message?
#    syntax error
# 4. What additional information does the interpreter provide about this type of error?
#    Unexpected end-of-input, expecting end
# 5. Where is the error in the code?
#    Error is on line 16 after the while loop.
# 6. Why did the interpreter give you this error?
#    The interpreter gave us this error because we forgot to close the while loop with an end tag. 

# --- error -------------------------------------------------------

south_park = "Show"

# 1. What is the line number where the error occurs?
#    Line 36
# 2. What is the type of error message?
#    in <main>
# 3. What additional information does the interpreter provide about this type of error?
#    undefined local variable or method 'south_park' for main:Object
# 4. Where is the error in the code?
#    The error is a name error on Line 36. 
# 5. Why did the interpreter give you this error?
#    The interpreter gives you this error because the local variable or method isn't defined. It wasn't previously given inputs or code blocks to interpret upon call.

# --- error -------------------------------------------------------

def cartman (x)
	x*x
	return x
end

cartman(1)

# 1. What is the line number where the error occurs?
#    Line 51.
# 2. What is the type of error message?
#    in <main>.
# 3. What additional information does the interpreter provide about this type of error?
#    undefined method 'cartman' for main:Object
# 4. Where is the error in the code?
#    The error is that the method isn't defined so it is on Line 51.
# 5. Why did the interpreter give you this error?
#    We call the method without defining it previously so the interpreter gives us an error. 

# --- error -------------------------------------------------------

def cartmans_phrase (x)
  puts "I'm not fat; I'm big-boned!"
end

cartmans_phrase('I hate Kyle')

# 1. What is the line number where the error occurs?
#    Line 71.
# 2. What is the type of error message?
#    in 'cartmans_phrase'
# 3. What additional information does the interpreter provide about this type of error?
#    wrong number of arguments
# 4. Where is the error in the code?
#    The error is in the initial def of cartmans_phrase.
# 5. Why did the interpreter give you this error?
#    The interpreter gave us an error because no arguments had been specified for the method 'cartmans_phrase'.

# --- error -------------------------------------------------------

def cartman_says(offensive_message)
  puts offensive_message
end

cartman_says ("You Suck")

# 1. What is the line number where the error occurs?
#    Line 90.
# 2. What is the type of error message?
#    in 'cartman_says'
# 3. What additional information does the interpreter provide about this type of error?
#    wrong number of arguments 
# 4. Where is the error in the code?
#    The error was on line 94 when the method was called.
# 5. Why did the interpreter give you this error?
#    The interpreter gave us an error because we didn't input an argument with our method.



# --- error -------------------------------------------------------

def cartmans_lie(lie, name)
  puts "#{lie}, #{name}!"
end

cartmans_lie('A meteor the size of the earth is about to hit Wyoming!', "Ted")

# 1. What is the line number where the error occurs?
#    Line 111. 
# 2. What is the type of error message?
#    in 'cartmans_lie'
# 3. What additional information does the interpreter provide about this type of error?
#    wrong number of arguments
# 4. Where is the error in the code?
#    The error is on line 115 when only 1 argument is specified. 
# 5. Why did the interpreter give you this error?
#    The interpreter gave us an error because the method asks for two arguments but the user only inputs one.

# --- error -------------------------------------------------------

"Respect my authoritay!" * 5

# 1. What is the line number where the error occurs?
#    Line 130.
# 2. What is the type of error message?
#    in '*'
# 3. What additional information does the interpreter provide about this type of error?
#    String can't be coerced into Fixnum
# 4. Where is the error in the code?
#    The error is on line 130 after the multiplication sign. 
# 5. Why did the interpreter give you this error?
#    The interpreter gave us this error because "Respect my authoritay" is not an integer or float and can't be multiplied by 5. 

# --- error -------------------------------------------------------

amount_of_kfc_left = 20/1


# 1. What is the line number where the error occurs?
#    Line 145.
# 2. What is the type of error message?
#    in '/' 
# 3. What additional information does the interpreter provide about this type of error?
#    divided by 0
# 4. Where is the error in the code?
#    The error comes on line 145 after the division sign.
# 5. Why did the interpreter give you this error?
#    The interpreter gives an error because an object can't be divided by 0. 

# --- error -------------------------------------------------------

require_relative "cartmans_essay.md"

# 1. What is the line number where the error occurs?
#    Line 161.
# 2. What is the type of error message?
#    in 'require_relative'
# 3. What additional information does the interpreter provide about this type of error?
#    cannot load such a file
# 4. Where is the error in the code?
#    The error occurs on line 161 inside the parenthesis.
# 5. Why did the interpreter give you this error?
#    The interpreter gave us an error because the file 'cartoon_essay.md' does not exist and therefore cannot be called. 


# --- REFLECTION -------------------------------------------------------
# Write your reflection below as a comment.

# Which error was the most difficult to read?

# The most difficult error was the first error which specified that the error was localed on like 176 when in actuality it was located on line 16. Line 176 was a commented line so I knew automatically that something was wrong.

# How did you figure out what the issue with the error was?

# I figured out the issue by looking at the type of error message and the additional information provided by the interpreter. The error was a syntax error and the additional information was that the interpreter was expecting and end. I knew that an end tag was missing in our program. 

# Were you able to determine why each error message happened based on the code? 

# The errors were fairly easy to understand and related directly to our readings and the past two challenges. It was easy to understand why the interpreter gave us an error with that specific block of code. The type of error and the additional information provided were a big help to determine what went wrong. 

# When you encounter errors in your future code, what process will you follow to help you debug?

# In the future, I think I'll follow this same process. I'll look at the error message and read through it to help me understand why the interpreter is giving me an error. I'll look at the line number, the type of error, and the additional message to see if I can spot the error myself. Where the error occurred will also help me debug my code.