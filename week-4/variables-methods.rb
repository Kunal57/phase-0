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
