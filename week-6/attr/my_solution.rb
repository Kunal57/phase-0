#Attr Methods

# I worked on this challenge [by myself]

# I spent [1] hours on this challenge.

=begin

Release 1
1. What are these methods doing?
initialize assigns values for @age, @name, and @occupation.
print_info puts those instance variables to the screen.
what_is_age returns the value of @age
change_my_age=(new_age) gives a new value to @age
what_is_name returns the value of @name
change_my_name=(new_name) gives a new value to @name
what_is_occupation returns the value of @occupation
change_my_age=(new_occupation) gives a new value to @occupation
2. How are they modifying or returning the value of instance variables?
The instance variable are modified within the methods to give them new values as outputs. 

Release 2
1. What changed between the last release and this release? What was replaced? Is this code simpler than the last?
This release added attr_reader :age. As a result, the method what_is_age isn't needed, as age can be called by p instance_of_profile.age
Is this code simpler than the last?
Since we needed one less method, the code is much simpler than the last. 

Release 3
1. What changed between the last release and this release? What was replaced? Is this code simpler than the last?
The method change_my_age was removed and replaced by attr_writer :age
Is this code simpler than the last?
This code is much simpler than the last because less lines are needed for the solution. It is more concise.

=end

# Pseudocode

# Input: Name
# Output: Greeting w/ Name.
# Steps:
# Def class NameData
# attr_accessor :name
# create method to initialize(name)
# instance variable for name

# def class Greetings
# attr_reader :person
# create method to initialize name
# @person = NameData.new
# create greeting method
# puts greeting with persons name

class NameData
attr_accessor :name

	def initialize(name)
		@name = name
	end

end


class Greetings
attr_reader :person

	def initialize(name="Sibel")
		@person = NameData.new(name)
	end

	def greeting
		puts "Hello #{@person.name}! How wonderful to see you today."
	end
end

greet = Greetings.new
p greet.greeting

greet_adam = Greetings.new("Adam")
p greet_adam.greeting


# Reflection

=begin

1. What is a reader method?

A reader method returns a value or state outside of the class, but it doesn't change the value.

2. What is a writer method?

A writer method changes the value of the variable outside of the class but it is not readable.

3. What do the attr methods do for you?

The attr method is both a reader and a writer. It can be used to return and change the value of the variable.

4. Should you always use an accessor to cover your bases? Why or why not?

No. An accessor isn't always the best solution as you may just wanted to read/write files instead of both returning and changing it.

5. What is confusing to you about these methods?

The most confusing part for me is to find real life uses/examples for using attr_reader, attr_writer, and attr_accessor. In the challenges it is fun and simple, but to find real world application of these methods is a little more difficult. I'll continue to read up on accessing attributes on Google to increase my understanding of the concept.

=end