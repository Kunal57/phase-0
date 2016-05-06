// Separate Numbers with Commas in JavaScript **Pairing Challenge**


// I worked on this challenge with: Ben Sanecki.

/** 
PSEUDOCODE

Input: Integer.
Output: String.
Steps:
1. Create a function 'separateComma' that accepts an integer as a parameter.
2. Create a variable that will hold the integer converted to a string.
3. Create a variable that will hold the length of the integer.
4. Create a variable that will told the string split into letters in an array.
5. Create an empty variable that will hold the reversed array.
6. Loop through and pop each letter into the revArray variable.
7. Loop through and insert a comma at every 4th index, have the insert begin at the third index.
8. Loop through and reverse the letters of the array so that the numbers are back to original sequence.
9. Join the letters of the array together.
10. Return the intArray variable.
11. End all loops and function.

**/

// Initial Solution

function separateComma(integer) {
    var intString = integer.toString();
    var intLength = intString.length;
    var intArray = intString.split("");
    var revArray = [];
    for (i=0;i < intLength;i++) {
        revArray.push(intArray.pop());
    }
    for (x=3;x < revArray.length;x+=4) {
        revArray.splice(x, 0 , ",");
    }
    for (y=revArray.length;y > 0 ;y--) {
        intArray.push(revArray.pop());
    }
    intArray = intArray.join("");
    return intArray;
}


console.log(separateComma(12345678987654321))

// Refactored Solution 1

var separateCommas = function(number) {
    var array = number.toString().split("");
    array = array.reverse();
    for(var i = 3; i < array.length; i+=4) {
        array.splice(i,0,",");
    }
    var string = array.reverse().join("");
    return string;
}

console.log(separateCommas(12345678987654321));

// Refactored Solution 2

var separateCommas = function(number) {
    var string = number.toString();

    for(var i = string.length; i > 3; i-=3) {
        string = string.slice(0,i-3) + "," + string.slice(i-3);
    }
    return string;
}

console.log(separateCommas(12345678987654321));

// Your Own Tests (OPTIONAL)

function assert(test, message, test_number) {
  if (!test) {
    console.log(test_number + "false");
    throw "ERROR: " + message;
  }
  console.log(test_number + "true");
  return true;
}

assert(
  (separateCommas(12345678987654321) == "12,345,678,987,654,320"),
  "The output should be 12,345,678,987,654,320",
  "1. "
)

assert(
    (separateCommas(1234) == "1,234"),
    "The output should be 1,234",
    "2. "
)

assert(
    (separateCommas(1234567) == "1,234,567"),
    "The output should be 1,234,567",
    "3. "
)

// Reflection

/**

1. What was it like to approach the problem from the perspective of JavaScript? Did you approach the problem differently?

Approaching the problem from the perspective of JavaScript wasn't much different than approaching it from Ruby. The thought process of how to solve the problem was relatively they same, but the actual syntax of the language was different. We approached the problem in the same way as we did with the problem in week-5. We converted the string to an array, reversed it, inserted commas, reversed it, and joined the arrays together into strings. The pseudocode was the same but the actual solution was composed of JavaScript syntax instead of Ruby syntax.

2. What did you learn about iterating over arrays in JavaScript?

I didn't learn anything specific about iterating over arrays in JavaScript from this challenge but I think iteration works the same way as it does in Ruby. Every element within the array is iterated over in JavaScript just like it is with Ruby.

3. What was different about solving this problem in JavaScript?

As I mentioned above, the syntax was the biggest difference. We used most of the same methods that we used in Ruby but declaring functions, variables, and printing seemed to be the biggest differences. JavaScript seems to relate to Ruby in many ways.

4. What built-in methods did you find to incorporate in your refactored solution?

We used the .splice method in our refactored solution. The splice method took 3 arguments. The first was the index, the second was whether anything should be taken out, and then third was the value that should be inserted. This allowed us to insert the commas every 3rd value to produce the result. Aside from .splice, we utilized .split, .reverse, and .join in our solution. We were familiar with these methods from Ruby so we decided to utilize them to make our code concise.

**/