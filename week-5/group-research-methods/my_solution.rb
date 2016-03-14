# Research Methods

# I spent [] hours on this challenge.

i_want_pets = ["I", "want", 3, "pets", "but", "only", "have", 2]
my_family_pets_ages = {"Evi" => 6, "Ditto" => 3, "Hoobie" => 3, "George" => 12, "Bogart" => 4, "Poly" => 4, "Annabelle" => 0}

# Person 1's solution

def my_array_finding_method(source, thing_to_find)
  source.select {|element| element.to_s.include?(thing_to_find)}
end

p my_array_finding_method(i_want_pets, "t")

def my_hash_finding_method(source, thing_to_find)
   pets = source.select {|key,value| value == thing_to_find}
   return pets.keys
end

p my_hash_finding_method(my_family_pets_ages, 3)
p my_hash_finding_method(my_family_pets_ages, 0)


# Identify and describe the Ruby method(s) you implemented.
  # The first method I created took 2 arguments: an array, and the letter to check if a string in the array includes
  # I used the method select, because this returns an array containing all elements for which the block returns true.
  # In this case, the block converts each element in the array to a string, and then checks if the letter (thing_to_find) is including in that string.
  # If you're wondering why I converted the elements to strings first, it is because you cannot use include? on a fixnum.
  # The ones that return true are put into an array, which is what the challenge asked for.

  # The second method I created takes in 2 arguments: a hash, and the value to check if a key equals to return
  # I used the method select again, becuase this returns a hash of all the key/value pairs with the value equal to the "thing_to_find"
  # I set this hash equal to a new value, pets
  # Then, I set the return value as pets.keys, because this returns an array of all the keys in the hash, which is only the names of the pets of the given age


# Person 2

# PESUDDOCODE
  #Input: I want the array I_WANT_PETS and also n which is a number
  #Steps:
    #I used .map! then went through all the numbers and if it was an integer then added 1 to it
    # "!" will modify the array
  #Output: The array but all the integers within the array will have 1 added to it

# Solution

def my_array_modification_method!(i_want_pets, n)
  i_want_pets.map! {|n| n.is_a?(Integer) ? n + 1 : n}
end

# Identify and describe the Ruby method(s) you implemented.
# I used for .map! - invokes the given block once for each element of self, replacing the element with the value returned by the block.
# Also I said if n is an interger then n + 1

def my_hash_modification_method!(my_family_pets_ages, n)
  my_family_pets_ages.each {|key, value| my_family_pets_ages[key] = value + n}
end
# Identify and describe the Ruby method(s) you implemented.
# it goes through each key and value pair
# then the key will be set to have a new value which is value + n
# in this case n = 2


# Release 1: Identify and describe the Ruby method you implemented. Teach your
# accountability group how to use the methods.
# Look under the code for instructions on what I did


# Release 3: Reflect!
# What did you learn about researching and explaining your research to others?
# This one was hard for me because I really had no idea on how to do it. So I did a lot of researching and was able to find out how to add the numbers. It was easier for the Array and much harder to do for the Hash



# Person 3

def my_array_sorting_method(i_want_pets)
  p i_want_pets.sort_by {|item| item.to_s}
end


def my_hash_sorting_method(my_family_pets_ages)
  p my_family_pets_ages.sort_by {|key, value| value}
end


# Identify and describe the Ruby method(s) you implemented.
#
# I implemented the "sort_by" enumerable method. Whereas the "sort" method uses the "<=>" comparative operator
# to compare each item in the array against each other, "sort_by" does something a little different. Sort_by takes
# a block of code and maps those actions to a new, intermediary array. So, for the first method to sort the i_want_pets
# array, sort_by turned every single "item" to a string and mapped that to a new array. Then, sort_by sorts this new,
# intermediary array, but then returns this sorted array in the form of the original array. That is why we get the two
# integers in the original array returned as integers after going through the sort_by method, even though the block of
# code turned each item into a string.
#
# The same idea occurs for the hash, where sort_by looks at the block passed to it and sorts based on whichever component
# of the hash is indicated, the key or value. In our case, I wanted to sory by values, so for each |key, value| I wanted
# the method to sort_by value, as stated in my block. The sort_by method called on a hash returns the key/value pairs as
# smaller arrays within a larger array containing all of the key/value pairs.

# Tips and tricks for Ruby Docs

# I'll be honest, I did not think sort_by was gunna be the right method, so I didn't even bother at first. I knew I had to
# convert those integers to strings to compare using just "sort", but then I was having a hard time getting those integers
# as strings back to integers so the rspec test would pass. I then just did a Google search, looked at Stack Overflow and
# saw that sort_by would solve all my problems. Then I snopped around some more on Stack Overflow and found a decent enough
# explanation of what sort_by is actually doing, which I described above. Go Internet.


# Person 4

def my_array_deletion_method!(source, thing_to_delete)
  source.each {|x| 
      source.delete(x) if (x.is_a?(String) && x.index(thing_to_delete) != nil)
    }
  p source
end
# Identify and describe the Ruby method(s) you implemented.
# => source.each: to iterate over source array
# => source.delete: to remove the element (x) from the array IF (x) met the following conditions
# => x.is_a?(String): to make sure that the element was a string
# => AND
# => x.index(thing_to_delete): != nil to determine that the character (thing_to_delete) is actually in the string


def my_hash_deletion_method!(source, thing_to_delete)
  source.delete(thing_to_delete)
  p source
end

# Identify and describe the Ruby method(s) you implemented.
# => source.delete(thing_to_delete): to delete the key/value pair where the key is identical to thing_to_delete


# Person 5

def my_array_splitting_method(source)

  split_array = []
  array_1 = []
  array_2 = []

  source.each do | item |
    if item.is_a?(Integer)
      array_1.push(item)
    else
      array_2.push(item)
    end
  end

  split_array.push(array_1)
  split_array.push(array_2)

  return split_array

end

def my_hash_splitting_method(source, age)

  split_array = []
  array_1 = []
  array_2 = []

  source.keys.each do | the_key |
    new_item = [the_key, source[the_key]]
    if source[the_key] <= 4
      array_1.push(new_item)
    else
      array_2.push(new_item)
     end
  end

  split_array.push(array_1)
  split_array.push(array_2)

  return split_array

end

=begin

Release 1: Identify and describe the Ruby method you implemented. Teach your accountability group how to use the methods.

For this problem I utilized the Ruby method .sort_by. I placed the array and hash elements in a specific order. 

For the array, the enumerable .sort method iterated over each array and placed the elements in an alphabetical order. The .sort_by method allowed me to provide a block of code that would allow me to convert each array into a string while sorting it. The code-block also allowed me to avid using the sort! destructive command.

For the hash, it contained two elements, the key and value. The sort_by method allows you to specify the element, either key or value, that you would like to sort. This is done by using a code block. Between the pipes you need to provide the names for the keys and values and specify which ones to sort. 


Release 3: Reflect!

What did you learn about researching and explaining your research to others?

Explanation in reflection file.

=end