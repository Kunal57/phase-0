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
	totalYards: 0,
	runningYards: 0,
	pass: function() {
		if (field.down < 5) {
			var yards = Math.floor((Math.random() * 10) + 1)
			field.firstDown = field.firstDown - yards
			field.yardsToTouchDown = field.yardsToTouchDown - yards
			var options = ["Rob Gronkowski","Julian Edelman","Danny Amendola","Dion Lewis"];
			var routes = ["hitch","slant","out","dig","post","corner","go"];
			var receiver = options[Math.floor(Math.random() * options.length)]
			var route = routes[Math.floor(Math.random() * options.length)]
			receivers[receiver] += yards;
			tomBrady.totalYards += yards;
			// console.log(field.firstDown)
			// console.log(field.yardsToTouchDown)
			// console.log(receiver)
			// console.log(route)
			if (field.touchdown == false) {
				if (field.yardsToTouchDown <= 0) {
					field.touchdown = true;
					field.playerTD = receiver;
					return "Brady throws it into the endzone for " + receiver + "! Touchdown Patriots!";
				}
				else if (field.firstDown <= 0) {
					field.firstDown = 10;
					field.down = 1;
					return "Tom Brady throws a completion for " + yards + " yards to " + receiver + "! First down Patriots!";
				}
				else {
					field.down += 1;
					return "Brady throws to " + receiver + " on a " + route + " route for a " + yards + " yard gain!"
				}
			}
		}
	},
	
	run: function() {
		if (field.down < 5) {
			var yards = Math.floor((Math.random() * 10) + 1)
			field.firstDown = field.firstDown - yards
			field.yardsToTouchDown = field.yardsToTouchDown - yards
			var options = ["Dion Lewis","LeGarrette Blount","Brandon Bolden"];
			var routes = ["blast","draw","pitch","sweep",];
			var runningBack = options[Math.floor(Math.random() * options.length)]
			var route = routes[Math.floor(Math.random() * options.length)]
			runningBacks[runningBack] += yards;
			tomBrady.runningYards += yards;
			// console.log(field.firstDown)
			// console.log(field.yardsToTouchDown)
			// console.log(runningBack)
			// console.log(route)
			if (field.touchdown == false) {
				if (field.yardsToTouchDown <= 0) {
					field.touchdown = true;
					field.playerTD = runningBack;
					return runningBack + " takes the handoff from Brady and muscles his way into the endzone! Touchdown Patriots!";
				}
				else if (field.firstDown <= 0) {
					field.firstDown = 10;
					field.down = 1;
					return "Tom Brady hands it off to " + runningBack + " for a " + yards + " yard gain! First down Patriots!";
				}
				else {
					field.down += 1;
					return runningBack + " gets the ball on a " + route + " route and takes it for a " + yards + " yard gain!"
				}
			}
		}
	}
};

field = {
	firstDown: 10,
	yardsToTouchDown: 80,
	touchdown: false,
	playerTD: "",
	down: 1,
};

var receivers = {
	"Rob Gronkowski": 0,
	"Julian Edelman": 0,
	"Danny Amendola": 0,
	"Dion Lewis": 0,
};

var runningBacks = {
	"Dion Lewis": 0,
	"LeGarrette Blount": 0,
	"Brandon Bolden": 0,
}

for (var i = 1; field.touchdown == false; i+=3) {
	console.log(tomBrady.pass());
	console.log(tomBrady.run());
}

console.log("Tom Brady led a " + i + " play - " + (tomBrady.totalYards + tomBrady.runningYards) + " yard drive to win the Superbowl!")

if (field.touchdown == true) {
	console.log(field.playerTD + " scored the game winning Touchdown!");
}

for (var key in receivers) {
	console.log(key + " had " + receivers[key] + " receiving yards on that game winning drive!");
}

for (var key in runningBacks) {
	console.log(key + " ran for " + runningBacks[key] + " yards on that game winning drive!");
}

// Refactored Code




// Reflection

/*

1. What was the most difficult part of this challenge?
2. What did you learn about creating objects and functions that interact with one another?
3. Did you learn about any new built-in methods you could use in your refactored solution? If so, what were they and how do they work?
4. How can you access and manipulate properties of objects?

*/