# Pseudocode

=begin

1. Method to create a list
input: string of items separated by spaces (example: "carrots apples cereal pizza")
steps: 
  define a method to take a string convert to hash keys
  iterate the keys and add a default quantity
  print the hash
output: hash

2. Method to add an item to a list
input: item and quantity(optional)
steps: add item as key and quantity as value default 1
output: new hash list with new item added

3. Method to remove an item from the list
input: item
steps: check list for item and delete if found
output: new hash list with item deleted

4. Method to update the quantity of an item
input: item and uptdated quantity
steps: check for item and replace the quantity 
output: updated hash list with new quantity

5. Method to print a list and make it look pretty
input: hash list
steps: iterated throught the hash item by item and print the key and value
output: printed list

=end

# Initial Solution

# Create a list
def list (strings)
  array_list = strings.split(/ /)
  grocery_list = Hash.new(0)
  array_list.each do |x|
    grocery_list[x] += 1
  end
  print_list(grocery_list)
  return grocery_list
end

# Add an Item
def add_to_list (grocery_list, string, integer=1)
  grocery_list[string] = integer
end

# Remove an Item
def remove_from_list (grocery_list, string)
  grocery_list.delete (string) 
end

# Update quantity of an Item
def update_list (grocery_list, string, integer)
  grocery_list.each do |key, value|
    if key == string
      grocery_list[key] = integer
    end
  end
  puts grocery_list
end

# Print the List
def print_list (grocery_list)
  grocery_list.each do |key, value|
    puts "#{key} : #{value}"
  end
end

    
grocery_list = list("banana apple pear")
add_to_list(grocery_list,"grapes",3)
remove_from_list(grocery_list,"apple")
update_list(grocery_list,"banana",10)
print_list(grocery_list)


# Reflection

=begin
	
1. What did you learn about pseudocode from working on this challenge?

I learned that I don't need to be so code heavy when writing pseudocode. My pair and I were thinking in terms of code when determining the inputs, outputs, and steps before writing the code. We thought about whether an array, hash, or string should be the input but we realized that that was much too complex and we could focus on that when writing the code. Instead we stuck to general terms and listed the input to be a list or grocery items and the output to grocery list. This was much simpler and allowed us to focus on breaking the problem down into small steps to eventually help when writing the code.

2. What are the tradeoffs of using Arrays and Hashes for this challenge?

I think arrays are much more easier to implement in the code because they are fairly simple to create and manage. Hashes on the both hand force you to create a key and value pair. The difference is that an array in this challenge would be much more complex to implement as the grocery item is associated with a quantity. A hash is much more easier because the grocery item can serve as the key in a hash and the quantity can be the value. In this way, although an array is easier to make, a hash is much more manageable because it associates the items with quantities. 

3. What does a method return?

Ruby methods don't return anything unless they are called upon. They define a set of instructions but that method needs to be called to return the output of the instructions.

4. What kind of things can you pass into methods as arguments?

I believe almost anything can pass into methods as arguments. Strings, integers, floats, booleans, variables, arrays, hashes, etc. A lot of different objects can serve as arguments in a method. Even other methods can pass as arguments in a method.

5. How can you pass information between methods?

Information can be passed between methods by using methods as arguments. In our challenge above, we passed information about the original list to the rest of the methods by calling the "grocery_list" method in the arguments of the associated methods. 

6. What concepts were solidified in this challenge, and what concepts are still confusing?

My understanding of creating arrays and hashes was solidified in this challenge. I also got a lot of experience writing pseudocode to help me with problem solving in the future. I'm still a little confused on iterations and passing methods between each other. I'll have to reread the iteration chapter and research more on passing information between methods.
	
=end