// JavaScript Olympics

// I paired with: Leland Meiners on this challenge.

// This challenge took me [1] hours.



// Bulk Up

var tomBrady = {name: "Tom Brady", event: "Super Bowl"};
var kobeBryant = {name: "Kobe Bryant", event: "NBA Finals"};

athleteArray = [];
athleteArray.push(tomBrady, kobeBryant);
console.log(athleteArray);

function winner(array_of_athletes) {
	for(i=0;i < array_of_athletes.length; i++) {
		array_of_athletes[i].win = array_of_athletes[i].name + " won the " + array_of_athletes[i].event;
	}
	return array_of_athletes
}

console.log(winner(athleteArray))

// Jumble your words

function reverseString(string) {
	var revString = string.split("").reverse().join("");
	return revString;
}

console.log(reverseString("Kunal Patel"));

// 2,4,6,8
// Attempt 1

var even = function(array) {
	evenArray = []
	for (var i = 0; i < array.length; i ++) {
		if (array[i] % 2 === 0) {
			 evenArray.push(array[i]);	
		}
	}
	return evenArray
}

console.log(even([1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20]))

// Attempt 2
function even(array_of_integers) {
	evenArray = [];
	for (i=0; i < array_of_integers.length; i++) {
		num = array_of_integers[i] % 2
		if (num == 0) {
			evenArray.push(array_of_integers[i]);
		} 
	}
	return evenArray;
}

console.log(even([1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20]))

// "We built this city"

var Athlete = function(name, age, sport, quote) {
	this.name = name;
	this.age = age;
	this.sport = sport;
	this.quote = quote;
}

var michaelPhelps = new Athlete("Michael Phelps", 29, "swimming", "It's medicinal I swear!")
console.log(michaelPhelps.constructor === Athlete)
console.log(michaelPhelps.name + " " + michaelPhelps.sport + " " + michaelPhelps.quote)


// Reflection

/**

1. What JavaScript knowledge did you solidify in this challenge?

I solidified the my understanding of the JavaScript syntax in this challenge. By encountering errors for simple syntax mistakes in this challenge, I was able to learn where I need to place "{}" and ";" in my code. Another concept that I solidified was creating JavaScript objects and calling on them in an array. The first released helped me reflect on my reading and implement it into a piece of code. One final component that I gained a better understanding on was the concept of a constructor function. I wasn't that comfortable with the concept after reading Eloquent JavaScript but actually putting it to use helped me gain more knowledge on how to actually implement it.

2. What are constructor functions?

A constructor function is any function that is used as a constructor. A function can be written to be used as a constructor or to be called as a normal function. A constructor is used with the new keyword. When a constructor is called, JavaScript creates a new object and sets the constructor property to that specified for the object. A constructor is useful when you want to create multiple similar objects with the same properties and methods. Constructors are like classes in Ruby.

3. How are constructors different from Ruby classes (in your research)?

The difference is in the type of objects and interactions involved in Ruby and JavaScript. Ruby uses objects inherited from Class to create new objects, whereas JavaScript can either define literal objects or constructor functions to create new objects.
JavaScript also allows for the creation of new objects with "Function.prototype", the idea that new objects reference the prototype object of the constructor function, thus inheriting its behavior. In Ruby, this is done through class objects and method definitions.

**/