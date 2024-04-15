import Foundation

//Super class
class Ship {
    let name: String
    let year: Int
    let countryOfOrigin: String
    
    init(name: String, year: Int, countryOfOrigin: String) {
        self.name = name
        self.year = year
        self.countryOfOrigin = countryOfOrigin
    }
}

// Sub-class

class CruiseShip: Ship {
    
    //followings are the new specialized props & methods for this sub-class
    
    var maxCapacity: Int
    var oceanOfOperation: Bool
    var currentPassengerCount: Int
    
    init(name: String, year: Int, countryOfOrigin: String, maxCapacity: Int, oceanOfOperation: Bool, currentPassengerCount: Int){
        self.maxCapacity = 2000 // default value
        self.oceanOfOperation = oceanOfOperation
        self.currentPassengerCount = 1  // default value
        super.init(name: name, year: year, countryOfOrigin: countryOfOrigin)
        
    }
    
    //Printing current (existing) passenger
    
    func printCurrentPassenger() -> Int {
        return currentPassengerCount
    }
    
    //adding new passenger to existing
    
    func addNewPass(_ newpassengers: Int) {
        currentPassengerCount += newpassengers
    }
    
    var newPassenger = 1999
    
    //checking whether cruise can take new passengers or not in different scenarios
    
    func calOfCruiseReady() {
        var cruiseReady = oceanOfOperation == true && currentPassengerCount + newPassenger <= maxCapacity
        if cruiseReady {
            print("Enjoy your trip!")
        }
        else if currentPassengerCount + newPassenger > maxCapacity {
            print("Sorry we are fully booked, please try next time!")
        }
        else  {
            print("Sorry currently we are not in service, we will resume our services soon!")
        }
        
    }
}
    // Noordam is the instance name and is now an object

    var noordam = CruiseShip(name: "Noordam", year: 1980, countryOfOrigin: "Germany", maxCapacity: 2000, oceanOfOperation: false, currentPassengerCount: 0)   //name, year and countryOfOrigin are //inherited from super class Ship to sub-class CruiseShip


 print("The current Noordam Cruise Passenger count is: \(noordam.currentPassengerCount)")     // formatted print
   
/* 1. Condition: currentPassenger: 1, newPassenger: 1000, maxCapacity: 2000 (default), oceanOfOperation: true - printed "Enjoy your trip!!"
 
 2. Condition: currentPassenger: 1, newPassenger: 3000, maxCapacity: 2000 (default), oceanOfOperation: true - printed "Sorry we are fully booked, please try next time!!"
 
 3. Condition: currentPassenger: 1, newPassenger: 1999, maxCapacity: 2000 (default), oceanOfOperation: false - printed "Sorry currently we are not in service, we will resume our services soon!!"

 */

noordam.calOfCruiseReady()
 

//CargoShip sub-class with speacilized props & methods

class CargoShip: Ship {
    
    var maxCargoCapacity: Double
    var currentCargoCount: Double
    var isinternational: Bool
    
    init(name: String, year: Int, countryOfOrigin: String, maxCargoCapacity: Double, currentCargoCount: Double, isinternational: Bool)  {
        self.maxCargoCapacity = 5000.0 // default value
        self.currentCargoCount = 1.0      // default value
        self.isinternational = isinternational
        super.init(name: name, year: year, countryOfOrigin: countryOfOrigin)
        
    }
    //Printing current (existing) cargo count
    
    func printCurrentCargoCount() -> Double {
        return currentCargoCount
    }
    
    // adding new cargo count to existing
    
    func addNewCargo(_ newcargocount: Double) {
        currentCargoCount += newcargocount
        
    }
    var newCargoCount = 3000.0

    // checking whether cargo company can take new cargoes or not in  different scenarios
    
    func checkingCargoCompany() {
        let cargoCompanyReady = isinternational == false && currentCargoCount + newCargoCount <= maxCargoCapacity
        if cargoCompanyReady {
            print("Yes we can provide service!")
        }
        else if currentCargoCount + newCargoCount > maxCargoCapacity {
            print("Sorry, we cannot provide service as we have already reached our maximum capacity!")
        }
        else  {
            print("Sorry we cannot provide service outside of Canada!")
        }
    }
}
   
let xyz = CargoShip(name: "XYZ", year: 1980, countryOfOrigin: "Canada", maxCargoCapacity: 5000.0, currentCargoCount: 1.0, isinternational: false)

print("The currentCargoCount is: \(xyz.currentCargoCount)")    // formatted print

xyz.checkingCargoCompany()


// Sub-class PirateShip with specialized props and methods

class PirateShip: Ship {
    
    var maxTreasureCapacity: Int
    var currentTreasureCount: Int
    var numberOfCannons: Int
    
    init(name: String, year: Int, countryOfOrigin: String, maxTreasureCapacity: Int, currentTreasureCount: Int, numberOfCannons: Int){
        self.maxTreasureCapacity = 1000  // default value
        self.currentTreasureCount = 1    // default value
        self.numberOfCannons = 0         // default value
        super.init(name: name, year: year, countryOfOrigin: countryOfOrigin)
    }
    
    // Printing current (existing) treasure count
    
    func printCurrentTreasure() -> Int {
        return currentTreasureCount
    }
    
    //adding new treasure to existing treasure
    
    func addNewTreasure(_ newtreasure: Int) {
        currentTreasureCount += newtreasure
        
    }
    var newTreasureCount = 900
    
    //checking whether additional treasure can be added to the ship or not in different scenarios
    
    func checkingPirateShip() {
        var newTreasureReadyToAdd = currentTreasureCount + newTreasureCount <= maxTreasureCapacity
        if newTreasureReadyToAdd {
            print("Yes we can add treasure to the ship!")
        }
        else {
            print("Sorry we cannot add anymore treasure to the ship!")
        }
            
        }
    }


let blackbread = PirateShip(name: "Blackbread", year: 1710, countryOfOrigin: "USA", maxTreasureCapacity: 1000, currentTreasureCount: 1, numberOfCannons: 0)
blackbread.printCurrentTreasure()

print("The current treasure count is: \(blackbread.currentTreasureCount)")  // Formatted print

blackbread.checkingPirateShip()
