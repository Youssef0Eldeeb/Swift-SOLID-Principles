import UIKit


// Protocols
protocol Drivable{
    func accelerate()
    func brake()
    func turnRight()
    func turnLeft()
}

protocol Mantainable{
    func addFuel()
    func changeOil()
    func rotateTires()
}

protocol Comfortable{
    func adjustDriverSeat()
    func turnOnAc()
    func playCD()
}

// Classes
class DrivableCar{
    func accelerate(){
        print("accelerate")
    }
    func brake(){
        print("brake")
    }
    func turnRight(){
        print("turnRight")
    }
    func turnLeft(){
        print("turnLeft")
    }
}

class MantainableCar{
    func addFuel(){
        print("addFuel")
    }
    func changeOil(){
        print("changeOil")
    }
    func rotateTires(){
        print("rotateTires")
    }
}

class ComfortableCar{
    func adjustDriverSeat(){
        print("adjustDriverSeat")
    }
    func turnOnAc(){
        print("turnOnAc")
    }
    func playCD(){
        print("playCD")
    }
}

//Main Class

class Car: Drivable, Mantainable, Comfortable{
    
    let driving = DrivableCar()
    let Maintenence = MantainableCar()
    let comforting = ComfortableCar()
    
    func accelerate() {
        driving.accelerate()
    }
    
    func brake() {
        driving.brake()
    }
    
    func turnRight() {
        driving.turnRight()
    }
    
    func turnLeft() {
        driving.turnLeft()
    }
    
    func addFuel() {
        Maintenence.addFuel()
    }
    
    func changeOil() {
        Maintenence.changeOil()
    }
    
    func rotateTires() {
        Maintenence.rotateTires()
    }
    
    func adjustDriverSeat() {
        comforting.adjustDriverSeat()
    }
    
    func turnOnAc() {
        comforting.turnOnAc()
    }
    
    func playCD() {
        comforting.playCD()
    }
    
}

// Calling

let car = Car()
car.playCD()
car.changeOil()
car.accelerate()

