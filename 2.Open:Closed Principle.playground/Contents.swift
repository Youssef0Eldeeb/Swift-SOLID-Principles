import UIKit

protocol PrintProtocol {
    func printDetailes() -> String
}

class Student: PrintProtocol{
    
    let name: String
    let id: Int
    
    init(name: String, id: Int){
        self.name = name
        self.id = id
    }
    
    func printDetailes() -> String {
        return "I'm \(name) and my Id is \(id)."
    }
}

class Course: PrintProtocol{
    let name: String
    
    init(name: String){
        self.name = name
    }
    
    func printDetailes() -> String {
        return "The name of the course is \(name)"
    }
}


class Logger {
    func printData(){
        let obj: [PrintProtocol] = [
            Student(name: "Ahmed", id: 233),
            Student(name: "Esraa", id: 423),
            Course(name: "Swift"),
            Course(name: "Objective C")
        ]
        
        obj.forEach { obj in
            print(obj.printDetailes())
        }
        
    }
}

let logger = Logger()
logger.printData()

