 // Design Basic Game Solo Challenge

// This is a solo challenge

// Your mission description:
// Overall mission: 
// Goals: 
// Characters:
// Objects:
// Functions:

// Pseudocode
// Ask the user for an input of either Rock, Paper, Scissors, or Rope.
// Generate a random number from the computer.
// If the number is less than .24, the computers choice will be Rock.
// If the number is between .25 & .50, the computers choice will be Paper.
// If the number is is between .50 & .75, the computers choice will be Scissors.
// If the number is more than .75, the computers choice will be Rope.
// Compare the computers choice to the user input, if they match display a message to make a new choice.
// Depending on the User Input, uses IF, ELSE IF, and IF statements to determine if the computer or user won the game.
// use the compare function to compare the userChoice to the computerChoice

// Initial Code

var userChoice = prompt("Do you choose Rock, Paper, Scissors or Rope?");
var computerChoice = Math.random();

if (computerChoice <= 0.24) {
    computerChoice = "Rock";
} else if (computerChoice > 0.24 && computerChoice <= 0.50) {
    computerChoice = "Paper";
} else if (computerChoice > 0.50 && computerChoice <= 0.75) {
    computerChoice = "Scissors";
} else {
    computerChoice = "Rope";
}

console.log("Computer choose: " + computerChoice);

var compare = function(choice1, choice2) {
    if (choice1 === choice2) {
        return userChoice = prompt("The result is a tie!\nPlease make a new choice...");
    }
    
    if (choice1 === "Rock") {
        if (choice2 === "Paper") {
            return "Paper Wins!";
        } else if (choice2 === "Scissors") {
            return "Rock Wins!";
        } else {
            return "Rope Wins!";
        }
    }

    if (choice1 === "Paper") {
        if (choice2 === "Rock") {
            return "Rock Wins!";
        } else if (choice2 === "Scissors") {
            return "Scissors Wins!";
        } else {
            return "Rope Wins!";
        }
    }

    if (choice1 === "Scissors") {
        if (choice2 === "Rock") {
            return "Rock Wins!";
        } else if (choice2 === "Paper") {
            return "Scissors Wins!";
        } else {
            return "Scissors Wins!";
        }
    }

    if (choice1 === "Rope") {
        if (choice2 === "Rock") {
            return "Rope Wins!";
        } else if (choice2 === "Paper") {
            return "Rope Wins!";
        } else {
            return "Scissors Wins!";
        }
    }
};

compare(userChoice,computerChoice);


// Refactored Code



// Reflection

/*

1. What was the most difficult part of this challenge?
2. What did you learn about creating objects and functions that interact with one another?
3. Did you learn about any new built-in methods you could use in your refactored solution? If so, what were they and how do they work?
4. How can you access and manipulate properties of objects?

*/