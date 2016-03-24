// Eloquent JavaScript

// Run this file in your terminal using `node my_solution.js`. Make sure it works before moving on!

// Program Structure
// Write your own variable and do something to it.
var first = "Elon", last = "Musk", goat = "Greatest of all time";
console.log(first + " " + last + " is the " + goat);

// Favorite Food Program
var fav_food = prompt("What's your favorite food?");
alert("Hey! " + fav_food + " is my favorite too!");

// Complete one of the exercises: Looping a Triangle, FizzBuzz, or Chess Board
var number = 1;
var pound = "#"
while (number <= 7) {
	console.log(pound);
	pound = pound + "#"
	number += 1;
}


// Functions

// Complete the `minimum` exercise.
var minimum = function(num1, num2) {
	if (num1 < num2)
		return num1;
	else if (num2 < num1)
		return num2;
	else
		return console.log("The numbers are equal");
}

console.log(minimum(23,24))

// Data Structures: Objects and Arrays
// Create an object called "me" that stores your name, age, 3 favorite foods, and a quirk below.



/*

Introduction (Links to an external site.)
1. Did you learn anything new about JavaScript or programming in general?
-The reason why computers are so useful is that they can do simple things incredibly fast. A program can combine a lot of simple actions in order to do very complicated things.
-Keeping programs under control is the main problem of programming. The art of programming is the skill of controlling complexity.
-JavaScript was created as a way to add programs to web pages.
-JavaScript made modern web application possible (applications that you can interact with directly, without reloading the page after each action).
-Code is the text that makes up programs.
2. Are there any concepts you feel uncomfortable with?
-Getting an introduction to Programming, Coding, and JavaScript was great. I learned a lot of basics and look forward to learning much more about JavaScript. I feel comfortable with everything that was discussed in the introduction. As I progress, I'll be uncomfortable at times with JavaScript & Node.js.

Ch. 1: Values, Types, and Operators (Links to an external site.)
1. Identify two similarities and two differences between JavaScript and Ruby syntax with regard to numbers, arithmetic, strings, booleans, and various operators.
Similarities
-Both Ruby and JavaScript consist of the operators: +, -, *, /, & %(remainder)
-Strings are ordered in alphabetical order. Uppercase letters come before lowercase letters
-Logical Operators: &&(and), ||(or), and !(not) are the same in both Ruby and JavaScript
Differences
-NaN = "Not a Number" in JavaScript
-"typeof" operator produces a string value naming the type of the value you give in JavaScript
-NaN is not equal to itself as it is not equal to the result of any other nonsensical computations.

Ch. 2: Program Structure (Links to an external site.)
1. What is an expression?
-An expression is a fragment of code that produces a value (ex: 23 or "Elon Musk")
-Expression = sentence fragment, Statement = full sentence, and A Program = list of statements
2. What is the purpose of semicolons in JavaScript? Are they always required?
-The purpose of semicolons in JavaScript is to end a statement. They are not always required and can be omitted but the rules are complex and error-prone.
3. What causes a variable to return undefined?
-When you define a variable(var) without giving it a value, the value will be undefined.
4. Write your own variable and do something to it in the eloquent.js file.
-Done
5. What does console.log do and when would you use it? What Ruby method(s) is this similar to?
-Console.log is a function that writes out its arguments to some text output device. You would use it when you want to display the results of a expression/statement to the output display. In Ruby, this would be similar to the puts command.
6. Write a short program that asks for a user to input their favorite food. After they hit return, have the program respond with "Hey! That's my favorite too!" (You will probably need to run this in the Chrome console (Links to an external site.) rather than node since node does not support prompt or alert). Paste your program into the eloquent.js file.
-Done
7. Describe while and for loops.
-While loops execute a statement as long as the expression produces a value that is true when converted to a boolean. The for loop must contain two semicolons. The first part before the semicolon initializes the loop, the second part is the expression that checks to see whether the loop must continue, and the final part updates the state of the loop after every iteration. In this way, it does the same thing as the while loop in a shorter more comprehensive form.
8. What other similarities or differences between Ruby and JavaScript did you notice in this section?
Similarities
-Both use While & For loops
-Both languages use "break" to jump out of an enclosed loop
-Operator shortcuts like: += and -=
Differences
-The continue loop is used in JavaScript to jump out of the body and continue on with the loop's next iteration
-The switch construct that jumps to the label that corresponds to the value of switch
9. Complete at least one of the exercises (Looping a Triangle, FizzBuzz, of Chess Board) in the eloquent.js file.
-

Ch. 3: Functions (Links to an external site.) (Skip the sections on closure and recursion)
1. What are the differences between local and global variables in JavaScript?
-Local variables are variables that are created inside of the function including the parameters. Global variables are variables that are declared outside of the function and are visible throughout the whole program.
2. When should you use functions?
-Functions should be used to organize code and to prevent repetition. Functions essentially define new instructions that weren't previously defined in JavaScript. As a result, the function can be called multiple times in the scope saving you time and also making your code more concise and organized.
3. What is a function declaration?
-A function declaration defines the variable and points it to a given function (ex: function square(x)). Declarations are not part of the regular top-to-bottom flow of control. Instead they are moved to the top of their scope and can be used by all the code in the scope.
4. Complete the minimum exercise in the eloquent.js file.
-Done

Ch. 4: Data Structures: Objects and Arrays (Links to an external site.) 
Skip the sections on the Lycanthrope's log, Computing Correlations, and sections from Further Arrayology to the Global Object, but read the chapter summary.
1. What is the difference between using a dot and a bracket to look up a property? Ex. array.max vs array["max"]
2. Create an object called me that stores your name, age, three favorite foods, and a quirk in your eloquent.js file.
3. What is a JavaScript object with a name and value property similar to in Ruby?


Reflection

1. What are the biggest similarities and differences between JavaScript and Ruby?
2. Was some of your Ruby knowledge solidified by learning another language? If so, which concepts?
3. How do you feel about diving into JavaScript after reading these chapters?

*/