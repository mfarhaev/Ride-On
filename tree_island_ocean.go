package main

import "fmt"

func main() {
	// Ride On - 2000 Lines of Go
	fmt.Println("Ride On!")
	
	// Variables
	var counter int = 0
	var value int = 0
	var result int = 0
	
	// For Loop
	for counter < 2000 {
		// If-Else Statement
		if counter % 2 == 0 {
			value = counter * 4
			result += value
		} else {
			value = (counter -1) * 6
			result -= value
		}
		
		fmt.Println(result)
		counter += 1
	}
	
	// Print Result
	fmt.Println("Ride On! Result is", result)
	
}