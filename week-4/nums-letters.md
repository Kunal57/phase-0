# Numbers, Letters, and Variable Assignment

## What does puts do?

Puts returns nil and prints the output on a new line.

## What is an integer? What is a float?

Integer = numbers without decimal points (7342, -30, 0)
Float = Numbers with decimal points (76.93, .0001, -54.876)

## What is the difference between float and integer division? How would you explain the difference to someone who doesn't know anything about programming?

The difference between float and integer division is the value returned. When dividing a float, the value can be a whole number or a fraction depending on what is being divided. For example, dividing a 9.0/2.0 would give us 4.5. When dividing a integer, the value is rounded down to the nearest whole number is a fraction is the answer. For example, dividing 9.0/2.0 would give us 4. Although the correct answer is 4.5, since integers only display whole numbers, 4 is returned instead of 4.5. This can be useful in many ways. When buying something that costs $2 with only $9 in your pocket, integers will notify you that you can only buy 4. It wouldn't be possible to buy 4.5 of the product because you don't have enough money.

## 2.5 Mini-Exercises
Hours in a Year

```ruby
	puts 24*365
```

Minutes in a Decade

```ruby
	puts (60*24)*365*10
```

## How does Ruby handle addition, subtraction, multiplication, and division of numbers?

Ruby handles basic arithmetic like a normal calculator. The main difference being the use of integers and floats as inputs. Unlike a calculator, Ruby will return the value of the expression you inputted with the type of input values you used. If you used integers, Ruby will return the value in integer format. This means that in a division problem, no decimals will be shown and instead the number will be rounded down to the nearest whole number. For floats, the results will be displayed with decimal points even if none are needed. For example, dividing two floats like 4.0/2.0 will result in the value of 2.0, as a result of the two inputs being in a float format. Other than this big difference, Ruby handles arithmetic similar to a basic calculator. Also spaces don't matter between integer/floats/signs. 

## What is the difference between integers and floats?

As stated above, the main difference between integers and floats are that integers are numbers without decimal points while floats are numbers with decimal points. Whether you input values into an expression using integers or floats makes a difference to how to output will look. 

## What is the difference between integer and float division?

As discussed above, the difference between integer and float division is how the output to the expression will look. Integers are whole numbers without decimal points. For this reason, any division problem that results in an answer that is a fraction will not be displayed. The expression will be rounded down to the nearest whole number and that whole number will be displayed. In contrast, floats are numbers with decimals. As a result, a division expression that results in a fraction will be displayed with that decimal point amount in the output. Integers are heavily used for day to day implementations while floats are primarily for scientific programs and such. 

## What are strings? Why and when would you use them?

Strings are just a group of letters in a program. We use strings to communicate and input non-numerical data. They can have punctuation, digits, symbols, and spaces in them. We can use them to display words and messages to the user that couldn't be communicated using simple numbers. Strings are located within '' or "" and display everything inside the punctuation, even spaces. 

## What are local variables? Why and when would you use them?

Variables are used to store string/numbers/booleans inside your program for latter use. You assign the value to a variable and have the ability to recall that variable later on in the program. You would use variables to be more efficient as you wouldn't have to repeat yourself. You can use variables for so many tasks and it makes programs more functional. For example, you can allow the user to input their name into a box and the input would be assigned to a variable. You can later use string interpolation to recall and display the users name.  

## How was this challenge? Did you get a good review of some of the basics?

This challenge was fairly simple. It provided a good review of the materials we learned prior to DBC for the interview process. A few things came back to me when completing this challenge, like string interpolation, defining methods, and operators. I'm hoping the next few challenges will be more challenging. 
