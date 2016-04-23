# 5.6 Create Accountability Groups

=begin

PSEUDOCODE
Input: A String.
Output: Strings.
Steps:
1. Define a method called 'accountability_groups' that accepts a parameter of a string.
2. Convert the string into an array by seperating it by a ','.
3. Take the array length and determine if dividing the length by 4,3, or 5 will produce a remainder of 0 or 1.
4. Use the results to form that many groups. 
5. Shuffle the array.
6. Insert the first 3/4 individuals into the first array.
7. Loop through till the array doesn't have any more people in them.
8. Iterate through each array and print the names out with the group number.
9. End method

=end

# Initial Solution

def accountability_groups(string)
  names_array = string.split(",").shuffle
  group_members = 0
  last_member = []

  if names_array.length % 5 == 0
    group_members = 5
  elsif names_array.length % 4 == 0
    group_members =  4
  elsif names_array.length % 3 == 0
    group_members = 3
  else
    group_members = 3
    last_member << names_array[-1]
    names_array.delete_at(-1)
  end

  num_of_groups = names_array.length / group_members

  groups = []
  counter = 0
  while counter < num_of_groups
    groups << names_array[0, group_members]
    names_array = names_array.drop(group_members)
    counter += 1
  end
  if last_member.empty?
  else
    groups[0].concat(last_member)
  end

  group_counter = 1

  groups.each do |group|
    puts " #{group.join(",")} is in group #{group_counter}."
    group_counter += 1
  end


end

accountability_groups("Kunal 1, Kunal 2, Kunal 3, Kunal 4, Kunal 5, Kunal 6, Kunal 7, Kunal 8, Kunal 9, Kunal 10, Kunal 11, Kunal 12, Kunal 13, Kunal 14, Kunal 15, Kunal 16, Kunal 17, Kunal 18, Kunal 19, Kunal 20, Kunal 21, Kunal 22, Kunal 23, Kunal 24, Kunal 25, Kunal 26, Kunal 27, Kunal 28, Kunal 29, Kunal 30, Kunal 31, Kunal 32, Kunal 33, Kunal 34")


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