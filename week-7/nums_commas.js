// Separate Numbers with Commas in JavaScript **Pairing Challenge**


// I worked on this challenge with: Ben Sanecki.

// Pseudocode

/*
-Define Function that takes an integer as an argument
-Convert the integer into a String, then to an Array
-Reverse the Array
-Insert commas every 3 numbers in array
-Reverse Array
-Join Array together
-Print the string
*/

// Initial Solution
var separateCommas = function(number) {
    var array = number.toString().split("")
    array = array.reverse()
    for(var i = 3; i < array.length; i+=4) {
        array.splice(i,0,",")
    }
    var string = array.reverse().join("")
    console.log(string)
}

separateCommas(10000000)

// Refactored Solution
var separateCommas = function(number) {
    var string = number.toString()

    for(var i = string.length; i > 3; i-=3) {
        string = string.slice(0,i-3) + "," + string.slice(i-3)
    }
    console.log(string)
}

separateCommas(10000000)

// Your Own Tests (OPTIONAL)



// Reflection

/*

1. What was it like to approach the problem from the perspective of JavaScript? Did you approach the problem differently?

Approaching the problem from the perspective of JavaScript wasn't much different than approaching it from Ruby. The thought process of how to solve the problem was relatively they same, but the actual syntax of the language was different. We approached the problem in the same way as we did with the problem in week-5. We converted the string to an array, reversed it, inserted commas, reversed it, and joined the arrays together into strings. The pseudocode was the same but the actual solution was composed of JavaScript syntax instead of Ruby syntax.

2. What did you learn about iterating over arrays in JavaScript?

I didn't learn anything specific about iterating over arrays in JavaScript from this challenge but I think iteration works the same way as it does in Ruby. Every element within the array is iterated over in JavaScript just like it is with Ruby.

3. What was different about solving this problem in JavaScript?

As I mentioned above, the syntax was the biggest difference. We used most of the same methods that we used in Ruby but declaring functions, variables, and printing seemed to be the biggest differences. JavaScript seems to relate to Ruby in many ways.

4. What built-in methods did you find to incorporate in your refactored solution?

We used the .splice method in our refactored solution. The splice method took 3 arguments. The first was the index, the second was whether anything should be taken out, and then third was the value that should be inserted. This allowed us to insert the commas every 3rd value to produce the result. Aside from .splice, we utilized .split, .reverse, and .join in our solution. We were familiar with these methods from Ruby so we decided to utilize them to make our code concise.

*/