import UIKit

protocol DatabaseService{
    func getUsers() -> [String]
}


class CoreDataService: DatabaseService{
    func getUsers() -> [String] {
        return ["users from CoreData"]
    }
    
}

class RealmDataService: DatabaseService{
    func getUsers() -> [String] {
        return ["users from RealmData"]
    }
    
}


var service: DatabaseService?
service = CoreDataService()
service?.getUsers()

service = RealmDataService()
service?.getUsers()
