#include <stdio.h> 
#include <stdlib.h>

// function declaration
int ride (int); 

int main() 
{ 
    // input the no of passengers
    int passengers; 
    printf("Enter the no of passengers: "); 
    scanf("%d", &passengers); 
  
    // calculate the no of rides
    int rides = ride(passengers); 
    printf("No of Rides: %d\n", rides); 
    return 0; 
} 

// function to calculate the no of ride
int ride(int passengers) 
{ 
    int ride; 
    if (passengers > 0) 
    { 
        // if passengers are more than 6
        if (passengers > 6) 
            ride = passengers/6 + passengers%6; 
  
        // if passengers are 6 or less than 6
        else
            ride = 1; 
    } 
    return ride; 
}