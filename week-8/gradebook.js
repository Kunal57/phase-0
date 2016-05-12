/*
Gradebook from Names and Scores
I worked on this challenge [with: Chris Lamkin]
This challenge took me [1] hours.
You will work with the following two variables.  The first, students, holds the names of four students.
The second, scores, holds groups of test scores.  The relative positions of elements within the two
variables match (i.e., 'Joseph' is the first element in students; his scores are the first value in scores.).
Do not alter the students and scores code.
*/

var students = ["Joseph", "Susan", "William", "Elizabeth"]

var scores = [ [80, 70, 70, 100],
               [85, 80, 90, 90],
               [75, 70, 80, 75],
               [100, 90, 95, 85] ]

// __________________________________________
// Write your code below.

// Solution 1
var gradebook = new Object();

gradebook["Joseph"] = {};
gradebook["Susan"] = {};
gradebook["William"] = {};
gradebook["Elizabeth"] = {};

gradebook.Joseph.testScores = scores[0];
gradebook.Susan.testScores = scores[1];
gradebook.William.testScores = scores[2];
gradebook.Elizabeth.testScores = scores[3];

gradebook["addScore"] =
function(name, score){
  gradebook[name]["testScores"].push(score);
}

gradebook.getAverage = function(name){
  return average(gradebook[name]["testScores"]);
};

function average(arrayIntegers){
  var sum = 0;
 for (var i = 0; i < arrayIntegers.length; i++){
   sum += arrayIntegers[i];
 }
  var average = sum / arrayIntegers.length;
  return average;
}

// Solution 2
var gradebook = {};

gradebook["Joseph"] = {};
gradebook["Susan"] = {};
gradebook["William"] = {};
gradebook["Elizabeth"] = {};

gradebook["Joseph"].testScores = scores[0];
gradebook["Susan"].testScores = scores[1];
gradebook["William"].testScores = scores[2];
gradebook["Elizabeth"].testScores = scores[3];

gradebook.addScore = function(name, score){
  gradebook[name].testScores.push(score);
};

gradebook.getAverage = function(name) {
  return average(gradebook[name].testScores)
};

var average = function(array_of_integers){
  sum = 0;
  for(var i = 0; i < array_of_integers.length; i++) {
    sum += array_of_integers[i];
  }
  return sum/array_of_integers.length
};


// __________________________________________
// Refactored Solution

var gradebook = {};

for (var i = 0; i < students.length; i++){
  gradebook[students[i]] = {testScores: scores[i]};
}

gradebook["addScore"] =
function(name, score){
  gradebook[name]["testScores"].push(score);
}

gradebook.getAverage = function(name){
  return average(gradebook[name]["testScores"]);
};

function average(arrayIntegers){
  var sum = 0;
 for (var i = 0; i < arrayIntegers.length; i++){
   sum += arrayIntegers[i];
 }
  return (sum / arrayIntegers.length);

}

// __________________________________________
// Reflect

/**
1. What did you learn about adding functions to objects?

I learned that functions can be added to objects in the same way that properties are added to objects. A function can be declared within an object by stating the object, followed by a period, and then the name of the function. After specifying the function parameters, you can insert the block of code within the function. The function can be called in the same a property is called. You simply state the function in either dot or bracket notation.

2. How did you iterate over nested arrays in JavaScript?

We iterated over the arrays in JavaScript by using a for loop. The loop allowed us to move through each element in the array and acquire the values that we needed. In terms of nested arrays, bracket notation allowed us to specify which values we needed from the nested arrays. In this way, we didn't need to create a iteration within an iteration to move through the elements in our nested arrays.

3. Were there any new methods you were able to incorporate? If so, what were they and how did they work?

We didn't incorporate any new methods into our solution. We did use the existing method of push to insert a new score to the end of our testScores. Other than methods, the most useful part of this challenge was learning to differentiate the use of dot notation from bracket notation in JavaScript. It helped me understand how each differed and when to use each one. 
**/


// __________________________________________
// Test Code:  Do not alter code below this line.


function assert(test, message, test_number) {
  if (!test) {
    console.log(test_number + "false");
    throw "ERROR: " + message;
  }
  console.log(test_number + "true");
  return true;
}



assert(
  (gradebook instanceof Object),
  "The value of gradebook should be an Object.\n",
  "1. "
)

assert(
  (gradebook["Elizabeth"] instanceof Object),
  "gradebook's Elizabeth property should be an object.",
  "2. "
)

assert(
  (gradebook.William.testScores === scores[2]),
  "William's testScores should equal the third element in scores.",
  "3. "
)

assert(
  (gradebook.addScore instanceof Function),
  "The value of gradebook's addScore property should be a Function.",
  "4. "
)

gradebook.addScore("Susan", 80)

assert(
  (gradebook.Susan.testScores.length === 5
   && gradebook.Susan.testScores[4] === 80),
  "Susan's testScores should have a new score of 80 added to the end.",
  "5. "
)

assert(
  (gradebook.getAverage instanceof Function),
  "The value of gradebook's getAverage property should be a Function.",
  "6. "
)

assert(
  (average instanceof Function),
  "The value of average should be a Function.\n",
  "7. "
)
assert(
  average([1, 2, 3]) === 2,
  "average should return the average of the elements in the array argument.\n",
  "8. "
)

assert(
  (gradebook.getAverage("Joseph") === 80),
  "gradebook's getAverage should return 80 if passed 'Joseph'.",
  "9. "
)