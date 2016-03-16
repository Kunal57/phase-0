# Your Names
# 1) Kunal Patel
# 2) Abid Ramay

# We spent [1] hour on this challenge.

# Bakery Serving Size portion calculator.

def serving_size_calc(item_to_make, people_to_feed)
  
  menu = {"cookie" => 1, "cake" =>  5, "pie" => 7}
  unless menu.has_key?(item_to_make)
    raise ArgumentError.new("#{item_to_make} is not a valid input")
  end

  serving_size = menu[item_to_make]
  hungry_people = people_to_feed % serving_size

  case hungry_people

  when 0
    return "Calculations complete: Make #{people_to_feed / serving_size} #{item_to_make}."
  else
    # return "Calculations complete: Make #{(people_to_feed / serving_size)+1} of #{item_to_make}"
    return "Calculations complete: Make #{(people_to_feed / serving_size)+1} #{item_to_make}."
    #of #{item_to_make}, you have #{hungry_people} left to feed. Suggested baking items: TODO: MAKE THIS FEATURE"
  end
end

p serving_size_calc("pie", 7)
p serving_size_calc("pie", 8)
p serving_size_calc("cake", 5)
p serving_size_calc("cake", 7)
p serving_size_calc("cookie", 1)
p serving_size_calc("cookie", 10)
p serving_size_calc("THIS IS AN ERROR", 5)

#  Reflection

=begin
  
1. What did you learn about making code readable by working on this challenge?

I learned a lot about making code readable by working on this challenge. First off, I learned that naming a variable is very important. A name should convey the meaning of the value it holds. For this example, the ingredients variable made it seem like the input should be a number of ingredients. Instead, the number was really meant for people to feed. In this way, the variable should convey the meaning of the value. Another lesson learned is that you should always write concise code. In this problem, the previous programmers wrote very complex code, especially for the error. In our solution, we condensed and simplified the error code to make it easier to read. 

2. Did you learn any new methods? What did you learn about them?

I learned the new method .has_key?. I learned that this is the same exact method as .include? for an array but it is just renamed .has_key? for a hash. It checks if the key is included in the hash or not.

3. What did you learn about accessing data in hashes?

I didn't learn much new information about accessing data in a hash. We did use the .has_key? method on our hash to determine if the "item_to_make" was located within our hash.

4. What concepts were solidified when working through this challenge?

I think my understanding of string interpolation was solidified in this challenge. I also gained a lot of experience by researching methods in the ruby docs. I'm getting more comfortable navigating the ruby documents and finding methods to utilize.
  
=end