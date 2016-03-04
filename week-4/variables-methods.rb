# Full name greeting: Write a program that asks for a person's first name, then middle, then last. Finally, it should greet the person using their full name.

puts "What is your first name?"
first_name = gets.chomp

puts "What is your last name?"
last_name = gets.chomp

puts "What is your middle name?"
middle_name = gets.chomp

puts "It's a pleasure to meet you " + first_name + " " + middle_name + " " + last_name + "."

puts

# Bigger, better favorite number: Write a program that asks for a person's favorite number. Have your program add 1 to the number, and then suggest the result as a bigger and better number.

puts "What's your favorite number?"
number = gets.chomp

new_number = number.to_i + 1

puts new_number.to_s + " is a better number than " + number.to_s


=begin
	
1. How do you define a local variable?
A local variable is defined with the "=" sign. The variable name can be any sequence of letters and numbers, but the first letter must always be lowercase. The input given after the "=" sign is the object the variable is assigned.

2. How do you define a method?
A method is defined with "def" followed by a method name, and any parameters that the method has. For example, def method_name (parameter_1, parameter_2). The body of the method comes below that and is comprised of the code and must be run utilizing the parameters. An "end" tag at the end of a method closes the method.

3. What is the difference between a local variable and a method?
A local variable is a object that holds a value that can reuse multiple times by calling the variable over and over again. A method is similar but instead of holding a value or string or boolean, a method holds a set of coding instructions to be rerun multiple times. Methods can also have multiple parameters that can be modified to change the output of the method.

4. How do you run a ruby program from the command line?
You run a ruby program from the command line by typing "ruby" followed by the file name. The file must end in a .rb for ruby to run the program. 

5. How do you run an RSpec file from the command line?
The RSpec file can be run from the command line by typing "rspec" followed followed by the Spec file, not solutions file. 

6. What was confusing about this material? What made sense?
Most of the material covered in this challenge was a refresher of the material we had to learn for the DBC application process. Although it was mostly repetitive, I found it confusing to differentiate between strings and integers when completing the exercises. At times I would gets.chomp and forget to convert the string into an integer before I putsed it back along with another string. It was small errors like these that caused errors and most of my confusion. 
The material that made sense was the puts, gets, chomp methods that we learned about in Code Academy. I can recall making a few programs on Code Academy that had us experiment with these methods and as a result it was easier for me to understand. 

One item that I'm still a little confused on is the difference between puts and p. In one of the exercises, I put puts instead of p and it came back as an error. I don't understand why we use puts in some situations and why we use p in others. If you could provide an explanation, please leave it in the comments. 

=end
