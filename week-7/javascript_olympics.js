 // JavaScript Olympics

// I paired with: Leland Meiners on this challenge.

// This challenge took me [1] hours.



// Bulk Up

var sarah = {
	name: "Sarah Hughes",
	event: "Ladies Singles",
};

var addWin = function(athletes) {
	for (i in athletes) {
		athletes[i] = athletes[i].name + " won the " + athletes[i].event + "!";
	}
	console.log(athletes[i]);
	};

addWin([sarah])


// Jumble your words

var jumble = function(string) {
	console.log(string.split("").reverse().join(""));
}

jumble("This is a string!")


// 2,4,6,8

var even = function(array) {
	for (var i = 0; i < array.length; i ++) {
		if (array[i] % 2 === 0) {
			console.log(array[i]);	
		}
	}
}

even([1,2,3,4,5,6,7,8,9])

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

/*

1. What JavaScript knowledge did you solidify in this challenge?

I solidified the my understanding of the JavaScript syntax in this challenge. By encountering errors for simple syntax mistakes in this challenge, I was able to learn where I need to place "{}" and ";" in my code. Another concept that I solidified was creating JavaScript objects and calling on them in an array. The first released helped me reflect on my reading and implement it into a piece of code. One final component that I gained a better understanding on was the concept of a constructor function. I wasn't that comfortable with the concept after reading Eloquent JavaScript but actually putting it to use helped me gain more knowledge on how to actually implement it.

2. What are constructor functions?

A constructor function is any function that is used as a constructor. A function can be written to be used as a constructor or to be called as a normal function. A constructor is used with the new keyword. When a constructor is called, JavaScript creates a new object and sets the constructor property to that specified for the object. A constructor is useful when you want to create multiple similar objects with the same properties and methods. Constructors are like classes in Ruby.

3. How are constructors different from Ruby classes (in your research)?

The difference is in the type of objects and interactions involved in Ruby and JavaScript. Ruby uses objects inherited from Class to create new objects, whereas JavaScript can either define literal objects or constructor functions to create new objects.
JavaScript also allows for the creation of new objects with "Function.prototype", the idea that new objects reference the prototype object of the constructor function, thus inheriting its behavior. In Ruby, this is done through class objects and method definitions.

*/