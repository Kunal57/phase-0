# CHALLENGE 5.6

# Pseudocode

=begin

Input: Strings
Output: Array
Steps:
1. DEF Method groups
2. Convert string into an array
3. Shuffle array objects
4. WHILE array is 5 or greater, place the first 5 strings in a separate array.
5. ELSE put the remainder objects one by one into the arrays starting from beginning to end.
6. END method
	
=end


# Initial Solution
def acct_groups(lst)
  if lst.count < 3
    puts "You need to find a larger group."
  else
  
    groups = Hash.new{|hsh,key| hsh[key] = Array.new }
    num = 1
    
    lst.each do |name|
      group_num = "Group " + num.to_s
      if groups[group_num].count < 2
        groups[group_num].push name
      else
        num += 1
        groups[group_num].push name
      end
    end
    
    if groups[groups.keys.last].count < 3
      groups[groups.keys.first].push(groups[groups.keys.last]).flatten!
      groups.delete(groups.keys.last)
    end
    
    p groups
    
  end
end

acct_groups(["kunal","patel","elon","musk","steve","jobs","warren","buffet","mark","cuban"])


# Refactored Solution
def acct_groups(lst)
  
  # IS YOUR GROUP BIG ENOUGH TO MAKE GROUPS?
  if lst.count < 3
    puts "You need to find a larger group."
  else
    
    # INITIALIZE VARIABLES
    # Create a hash where the values are inside of an array.
    groups = Hash.new{|hsh,key| hsh[key] = Array.new }
    # Initialize a number variable to replace the # for Group # keys in hash
    num = 1
    
    # CREATE EACH GROUP
    # Iterate through the array and grab each name
    lst.each do |name|
      # Initialize a group_num variable and set it equal to the 
      # string "Group " and the num variable
      group_num = "Group " + num.to_s
      # IF the current group key has less than 2 values
      if groups[group_num].count < 2
        # Add a name to the list of values for that group
        groups[group_num].push name
      else
        # Add one to the number variable to create a new group
        num += 1
        # Add the last name to the list of values for that group
        groups[group_num].push name
      end
    end
    
    # FIX LAST GROUP IF LESS THAN 3 MEMBERS
    # IF the last group has less than 3 members
    if groups[groups.keys.last].count < 3
      # Add its members to the first group
      groups[groups.keys.first].push(groups[groups.keys.last]).flatten!
      # and delete the last group's existence
      groups.delete(groups.keys.last)
    end
    
    # RETURN AND PRINT ALL GROUPS
    p groups
    
  end
end

acct_groups(["kunal","patel","elon","musk","steve","jobs","warren","buffet","mark","cuban"])

# Reflection

=begin

1. What was the most interesting and most difficult part of this challenge?

This challenge was great because it was very difficult. I had to spend multiple days thinking of potential solutions and translating my thoughts into pseudocode. Even after I wrote my pseudocode, it was very difficult writing the code. I would run into problems and I didn't know how to correctly format the solution. Slowly working out the solution and writing the code for each step was very rewarding as I learned a lot through research and reading. This also turned out to be the most interesting part of the challenge as I learned a lot of new methods, and developed my ability to Google. I loved the challenge and I learned a lot because of its difficulty.

2. Do you feel you are improving in your ability to write pseudocode and break the problem down?

With each challenge, breaking down the problem in my head and translating it in a written format via pseudocode is helping me solve the problem more effectively. Rather than jumping into the solution, pseudocode provides a great avenue for me to think the solution out in my head before diving into the problem. With each challenge, I continue to improve my ability to break down problems and pseudocode out the solution.

3. Was your approach for automating this task a good solution? What could have made it even better?

I believe my solution was good for automating this task. The original solution was a bit complex and lengthy but I believe I made it better when I refactored it. To make it even better, I would have condensed the code and cut down lines. I could have also researched more methods to eliminate unnecessary code blocks.

4. What data structure did you decide to store the accountability groups in and why?

I decided to store the accountability groups in a hash. This is because as a hash, I could display the a group number as the key, and the group members as values. As a result, if I even needed to do something with a specific groups or group members, I could always access the data by calling the key or value. I believe this works out better than an array or a string due to the ease or recalling information. The data is already in a hash and can be passed along to be used further.

5. What did you learn in the process of refactoring your initial solution? Did you learn any new Ruby methods?

I learned a lot of new ruby methods and become more familiar with ruby methods that I had used previously. Specifically, I became more comfortable with and more knowledgeable about .last, .count, .push in my refactored solution. I learned that a lot of the code blocks that I wrote in my initial solution can be replaced with ruby methods.

=end