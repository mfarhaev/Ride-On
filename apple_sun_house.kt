//Ride On

// Imports
import java.io.File
import java.net.URL

// Constants
const val MAX_POINTS = 10
const val MIN_POINTS = 0

// Enums
enum class RideType {
    STANDARD, PREMIUM, EXPRESS
}

// Data classes
data class Ride (
    val type: RideType,
    val distance: Double
)

data class Passenger (
    val name: String,
    val age: Int,
    val phoneNumber: String
)

// Companion objects
object RideService {
    fun fetchAllRides(): List<Ride> {
        // Fetch rides from web service
    }
}

// Interfaces
interface RideStatListener {
    fun onRideStarted()
    fun onRideCompleted()
    fun onRideCancelled()
}

// Classes
class RideManager {
    private var rides: MutableList<Ride> = mutableListOf()
    private var listeners: MutableList<RideStatListener> = mutableListOf()
    private var points: Int = 0
    
    fun addRide(ride: Ride) {
        rides.add(ride)
    }
    
    fun removeRide(ride: Ride) {
        rides.remove(ride)
    }
    
    fun startRide() {
        points += 1
        //Notify listeners
        listeners.forEach { listener ->
            listener.onRideStarted()
        }
    }
    
    fun completeRide() {
        points += 2
        //Notify listeners
        listeners.forEach { listener ->
            listener.onRideCompleted()
        }
    }
    
    fun cancelRide() {
        points -= 1
        //Notify listeners
        listeners.forEach { listener ->
            listener.onRideCancelled()
        }
    }
    
    fun getPoints(): Int {
        return points
    }
    
    fun addListener(listener: RideStatListener) {
        listeners.add(listener)
    }
    
    fun removeListener(listener: RideStatListener) {
        listeners.remove(listener)
    }
    
}

class RideServiceManager(private val rideService: RideService) {
    private var currentRides: MutableList<Ride> = mutableListOf()
    
    fun fetchRides() {
        val rides = rideService.fetchAllRides()
        currentRides.addAll(rides)
    }
    
    fun bookRide(ride: Ride, passenger: Passenger) {
        // Book ride via web service
    }
    
    fun cancelRide(ride: Ride) {
        // Cancel ride via web service
    }
    
    fun getCurrentRides(): List<Ride> {
        return currentRides
    }
    
}

class RideServiceViewModel(private val rideManager: RideManager) {
    fun getRideStats(): Map<RideType, Int> {
        val rideStats = mutableMapOf<RideType, Int>()
        rideManager.rides.forEach { ride ->
            if (rideStats.containsKey(ride.type)) {
                val count = rideStats[ride.type]!!
                rideStats[ride.type] = count + 1
            } else {
                rideStats[ride.type] = 1
            }
        }
        return rideStats
    }
    
    fun getPoints(): Int {
        val points = rideManager.getPoints()
        return if (points > MAX_POINTS) MAX_POINTS else if (points < MIN_POINTS) MIN_POINTS else points
    }
    
}

// Main class
class RideOn {
    companion object {
        @JvmStatic
        fun main(args: Array<String>) {
            // Initialize the managers
            val rideManager = RideManager()
            val rideService = RideServiceManager(RideService)
            val viewModel = RideServiceViewModel(rideManager)
            
            // Fetch rides
            rideService.fetchRides()
            
            // Print ride stats
            val rideStats = viewModel.getRideStats()
            println(rideStats)
            
            // Print points
            val points = viewModel.getPoints()
            println("Points: $points")
        }
    }
}