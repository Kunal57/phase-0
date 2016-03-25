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

var me = {
	name: "Kunal Patel",
	age: 23,
	favorite_foods: ["Tostadas", "Burgers", "Burritos"],
	quirk: "I wash my hands 20 times a day",
}

console.log(me.name)
console.log(me.age)
console.log(me.favorite_foods)
console.log(me.quirk)

