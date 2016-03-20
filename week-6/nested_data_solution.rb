# RELEASE 2: NESTED STRUCTURE GOLF
# Hole 1
# Target element: "FORE"

array = [[1,2], ["inner", ["eagle", "par", ["FORE", "hook"]]]]

# attempts:
# ============================================================
p array[1][1][2][0]


# ============================================================

# Hole 2
# Target element: "congrats!"

hash = {outer: {inner: {"almost" => {3 => "congrats!"}}}}

# attempts:
# ============================================================
p hash[:outer][:inner]["almost"][3]


# ============================================================


# Hole 3
# Target element: "finished"

nested_data = {array: ["array", {hash: "finished"}]}

# attempts:
# ============================================================
p nested_data[:array][1][:hash]


# ============================================================

# RELEASE 3: ITERATE OVER NESTED STRUCTURES

number_array = [5, [10, 15], [20,25,30], 35]

number_array.map! do |x|
	if x.kind_of?(Array)
		x.map! do |i|
			i + 5
		end
	else
		x + 5
	end
end

p number_array

# Bonus:

startup_names = ["bit", ["find", "fast", ["optimize", "scope"]]]

startup_names.map! do|x|
  if x.kind_of?(Array)
    x.map! do|i|
      if i.kind_of?(Array)
        #map y
        i.map! {|y| y + "ly"}
      else
        i+"ly"
      end
   end
  else
    x + "ly"
  end
end
p startup_names

# Reflection

=begin

1. What are some general rules you can apply to nested arrays?

- The deeper you want to dig into the dimensions of an array, the more indices you need to indicate. For example, for a two-dimensional array, you need two indices to select the element (array[1][3]).
- The nested array is just another object within the array.
- Iteration through a nested array needs to be signified with code to run through the nested array.

2. What are some ways you can iterate over nested arrays?

- In release 3, we iterated over the nested array by asking if the object was an array. If the object was an array, we iterated through the array and added 5 to each number in the array. Else, if the object wasn't an array, we simply added 5 to the number.
- Another was to iterate over an array is to iterate each object in the array and then use an iteration within the iteration. So when iterating each object, you would iterate each objects object if they had any. This would iterate over the array in the array to produce the desired results.

3. Did you find any good new methods to implement or did you re-use one you were already familiar with? What was it and why did you decide that was a good option?

I learned about the .kind_of? method. This method tests to see if the value is an array and runs the code block if it is. Some methods that we re-used were .map to iterate though each value and process the code block associated with it. We decided that .map was a good method because it iterated through the values and displayed them correctly. The .each method executes the block for each element and returns the array itself. The .map method executes the block of code for each element but returns a new array. We felt like the return of a new array would be better for our results.

=end