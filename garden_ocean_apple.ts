// Ride On - Typescript Code 

// Global Variables 
let rideName: string = "Ride On";
let rideDuration: number = 500;
let rideCapacity: number = 10;
let ridePrice: number = 5.00;

// Function Declaration 
function startRide(name: string): void {
    console.log("Starting the " + name + " ride!");
}

function stopRide(name: string): void {
    console.log("Stopping the " + name + " ride!");
}

// Main Functionality 
startRide(rideName);
for(let i=0; i<rideDuration; i++){
    // Ride Logic Here 
}
stopRide(rideName);

// Helper / Utility Functionality 
function validateRider(riderName: string, capacity: number): void {
    if (capacity <= 0) {
        console.log("Sorry, " + riderName + ", the ride is currently full");
    } else {
        console.log("Welcome aboard, " + riderName + "!");
        capacity -= 1;
    }
}

function chargeRider(riderName: string, ridePrice: number): void {
    console.log("Charging " + riderName + " $" + ridePrice + " for the ride!");
}

// Rider Loop 
for(let j=0; j<rideCapacity; j++){
    let riderName: string = "Rider " + (j + 1);
    validateRider(riderName, rideCapacity);
    chargeRider(riderName, ridePrice);
    rideCapacity -= 1;
}