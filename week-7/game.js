// Design Basic Game Solo Challenge

// This is a solo challenge

// THE MISSION -
// Mission Description: Help Tom Brady lead a game-winning drive in the Superbowl.
// Goals: Score a Touch-Down.
// Characters: Tom Brady, Rob Gronkowski, Julian Edelman, Danny Amendola, Dion Lewis
// Objects: Tom Brady, Football
// Functions: Throw, Run

/**
PSEUDOCODE
1. Create a tomBrady object 

**/

// Initial Code

var tomBrady = {
	firstDown: 0,
	yardsToGo: 10,
	touchdown: 80,
	throw: function() {
		var yards = Math.floor((Math.random() * tomBrady.yardsToGo) + 1)
		tomBrady.yardsToGo = tomBrady.yardsToGo - yards
		tomBrady.touchdown = tomBrady.touchdown - yards
		console.log(tomBrady.yardsToGo)
		console.log(tomBrady.touchdown)
		if (tomBrady.touchdown == 0) {
			return "Touchdown Patriots!";
		}
		else if (tomBrady.yardsToGo <= 0) {
			tomBrady.yardsToGo = 10;
			return "Tom Brady throws a completion for " + yards + " yards! First down Patriots!";
		}
		else {
			return "Tom Brady throws a completion for " + yards + " yards!";
		}
	}
};

field = {
	tomBrady: 50,
	touchdown: false,
};

var receivers = {
	"Rob Gronkowski": 0,
	"Julian Edelman": 0,
	"Danny Amendola": 0,
	"Dion Lewis": 0,
};



console.log(tomBrady.throw())
console.log(tomBrady.throw())
console.log(tomBrady.throw())
console.log(tomBrady.throw())
console.log(tomBrady.throw())
console.log(tomBrady.throw())
console.log(tomBrady.throw())
console.log(tomBrady.throw())
console.log(tomBrady.throw())
console.log(tomBrady.throw())
console.log(tomBrady.throw())
console.log(tomBrady.throw())
console.log(tomBrady.throw())
console.log(tomBrady.throw())
console.log(tomBrady.throw())
console.log(tomBrady.throw())
console.log(tomBrady.throw())
console.log(tomBrady.throw())
console.log(tomBrady.throw())
console.log(tomBrady.throw())
console.log(tomBrady.throw())


// Refactored Code




// Reflection

/*

1. What was the most difficult part of this challenge?
2. What did you learn about creating objects and functions that interact with one another?
3. Did you learn about any new built-in methods you could use in your refactored solution? If so, what were they and how do they work?
4. How can you access and manipulate properties of objects?

*/