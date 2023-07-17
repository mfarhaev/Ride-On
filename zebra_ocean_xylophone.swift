import UIKit

class RideOn {
    
    // MARK: - Properties
    var destination: String?
    var origin: String?
    var estimatedArrivalTime: Date?
    var numberOfPassengers: Int?
    var driverName: String?
    var carDescription: String?
    var rideTime: Date?
    var distance: Double?
    
    // MARK: - Life Cycle
    init() {
        destination = ""
        origin = ""
        estimatedArrivalTime = Date()
        numberOfPassengers = 0
        driverName = ""
        carDescription = ""
        rideTime = Date()
        distance = 0.0
    }
    
    init(destination: String, origin: String, estimatedArrivalTime: Date, numberOfPassengers: Int, driverName: String, carDescription: String, rideTime: Date, distance: Double) {
        self.destination = destination
        self.origin = origin
        self.estimatedArrivalTime = estimatedArrivalTime
        self.numberOfPassengers = numberOfPassengers
        self.driverName = driverName
        self.carDescription = carDescription
        self.rideTime = rideTime
        self.distance = distance
    }
    
    // MARK: - Methods
    func calculateFare(_ baseFare: Double, _ extraCost: Double, _ discount: Double) -> Double {
        let fare = baseFare + extraCost - discount
        return fare
    }
    
    func updateEstimatedArrivalTime(arrivalTime: Date) {
        self.estimatedArrivalTime = arrivalTime
    }
    
    func updateNumberOfPassengers(passengers: Int) {
        self.numberOfPassengers = passengers
    }
    
    func updateDriverName(driverName: String) {
        self.driverName = driverName
    }
    
    func updateCarDescription(description: String) {
        self.carDescription = description
    }
    
    func updateRideTime(rideTime: Date) {
        self.rideTime = rideTime
    }
    
    func updateDistance(distance: Double) {
        self.distance = distance
    }
    
    func cancelRide() {
        self.destination = ""
        self.origin = ""
        self.estimatedArrivalTime = Date()
        self.numberOfPassengers = 0
        self.driverName = ""
        self.carDescription = ""
        self.rideTime = Date()
        self.distance = 0.0
    }
    
    func getRideHistory() -> [String] {
        // Return array of strings formatted like: `driverName`, `origin`, `destination`, `distance`, `rideTime`
        let rideHistory = [String]()
        return rideHistory
    }
}