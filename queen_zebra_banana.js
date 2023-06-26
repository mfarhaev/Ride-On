// Ride On!

// User interaction
let userInput;

// Screen rendering function
function renderScreen() {
    userInput = document.getElementById("userInput").value;
    console.log('User input: ' + userInput);
}

// Helper functions
function moveForward(speed) {
    // Code to move forward
    console.log('Moving forward with speed ' + speed + ' mph.');
}

function brake() {
    // Code to apply the brakes
    console.log('Brakes applied.');
}

function soundHorn() {
    // Code to sound horn
    console.log('Honk honk!');
}

function turn(direction) {
    // Code to turn
    console.log('Turning ' + direction + '.');
}

function indicate(direction) {
    // Code to indicate
    console.log('Indicating ' + direction + '.');
}

function accelerate(speed) {
    // Code to accelerate
    console.log('Accelerating with speed ' + speed + ' mph.');
}

// Main function to execute user input
function executeUserInput() {
    if (userInput.length == 0) {
        console.log('No user input.');
    } else if (userInput == 'go') {
        moveForward(10);
    } else if (userInput == 'brake') {
        brake();
    } else if (userInput == 'horn') {
        soundHorn();
    } else if (userInput == 'left') {
        turn('left');
    } else if (userInput == 'right') {
        turn('right');
    } else if (userInput == 'indicate left') {
        indicate('left');
    } else if (userInput == 'indicate right') {
        indicate('right');
    } else if (userInput == 'speed up') {
        accelerate(50);
    } else {
        console.log('Unknown command.');
    }

}

// Event listener for user input
document.getElementById("userInput").addEventListener("keyup", renderScreen);