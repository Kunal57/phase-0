# A Nested Array to Model a Bingo Board SOLO CHALLENGE

# I spent [2] hours on this challenge.


# Release 0: Pseudocode
# Outline:

# Create a method to generate a letter ( b, i, n, g, o) and a number (1-100)
  #fill in the outline here

# Check the called column for the number called.
  #fill in the outline here

# If the number is in the column, replace with an 'x'
  #fill in the outline here

# Display a column to the console
  #fill in the outline here

# Display the board to the console (prettily)
  #fill in the outline here

# Initial Solution

class BingoBoard

  def initialize(board)
    @bingo_board = board
    @hash = {"B" => 0 , "I" => 1 , "N" => 2, "G" => 3 , "O" => 4}
    @array = ["B" , "I" , "N" , "G" , "O"]
  end

  def call
    @letter = @array[rand(0..4)]
      p @letter
    @number = rand(1...100).to_s
      p @number
    @letter_num = @letter + @number
      p @letter_num
  end

  def check
    @call_letter = @letter_num[0]
      p @call_letter
    @call_number = @letter_num.slice(1,2).to_i
      p @call_number

    @bingo_board.each do |element|
      p element[@hash[@call_letter]]
      if element[@hash[@call_letter]] == @call_number
        element[@hash[@call_letter]] = 'X'
      end
    end

    @bingo_board.each do |element|
      p element
    end
  end
end

# Refactored Solution

class BingoBoard

  def initialize(board)
    @bingo_board = board
    @hash = {"B" => 0 , "I" => 1 , "N" => 2, "G" => 3 , "O" => 4}
  end

  def call
    @letter_num = "BINGO"[rand(0..4)] + rand(1..100).to_s
      p "The called number is #{@letter_num}"
  end

  def check
    call_letter = @letter_num[0]
    call_number = @letter_num.slice(1,2).to_i

    p "Each element of column #{@call_letter} on the bingo-board: "
    @bingo_board.each do |element|
      p element[@hash[call_letter]]
      if element[@hash[call_letter]] == call_number
        element[@hash[call_letter]] = 'X'
      end
    end

    p "The new bingo-board: "
    @bingo_board.each do |element|
      p element
    end
  end
end

#DRIVER CODE (I.E. METHOD CALLS) GO BELOW THIS LINE
board = [[47, 44, 71, 8, 88],
        [22, 69, 75, 65, 73],
        [83, 85, 97, 89, 57],
        [25, 31, 96, 68, 51],
        [75, 70, 54, 80, 83]]

new_game = BingoBoard.new(board)

new_game = BingoBoard.new(board)

new_game.call
new_game.check

#Reflection

=begin

1. How difficult was pseudocoding this challenge? What do you think of your pseudocoding style?

Pseudocoding for this challenge was difficult. I had to think about the problem for a few day and then translate my thoughts into pseudocode before writing any code to complete the challenge. I liked this pseudocode style better as the challenge already broke down the various steps involved in solving the problem. This helped write pseudocode in manageable parts that eventually led to the completion of this challenge.

2. What are the benefits of using a class for this challenge?

The benefit of using a class for this challenge was that although the concept of the bingo board would remain the same, the actual integers on the board could be changes and the same methods could be called on the board to determine if the user got "BINGO". This means that the input could be changed and modified without actually changing any of the call or check methods. As a result, the class could be utilized for any bingo board.

3. How can you access coordinates in a nested array?

As we learned earlier this week, we can access coordinates in a nested array by calling on them in the same manner we call coordinates in a normal array. The deeper you wish to go into a nested array, the more specific your array call becomes. Example, array[1][2] would call on the second array in the original array, and the [2] would call on the third value within that array. To iterate over coordinates in a nested array, you must iterate within an iteration. An .each method can be called within an .each method to iterate through the values of an array within an array.

4. What methods did you use to access and modify the array?

I used the .each method to iterate though the array and modify the array where it needed to be. 

5. Give an example of a new method you learned while reviewing the Ruby docs. Based on what you see in the docs, what purpose does it serve, and how is it called?

I utilized the .slice and .to_i methods in my solution. To extract the numbers from my letter_num variable, the .slice and .to_i allowed me to separate the strings apart and convert them into integers so I could effectively use them within the method.

6. How did you determine what should be an instance variable versus a local variable?

The instance variable would be much better than a local variable for this solution. Def the instance variables in the initialization of the class would allow me to use the variables through my class. A local variable wouldn't allow me to use the variable in my instances so I could have to define the variable again and again and it would lead to messy code. Using an instance variable allows me to keep my code organized and efficient. 

7. What do you feel is most improved in your refactored solution?

In my initial solution, I moved through my pseudocode step by step, simply trying to solve the challenge. I didn't pay attention to much redundancy or effectiveness. In my refactored solution, I went back to eliminate lines of code that weren't necessary, and I improved upon my methods to produce more concise code.

=end