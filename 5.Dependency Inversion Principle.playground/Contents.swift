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


// Other Example to DIP

protocol NotificationService{
    func send()
}

class Hotmail: NotificationService{
    func send() {
        print("Sending by Hotmail")
    }
}
class Mail: NotificationService{
    func send() {
        print("Sending by Mail")
    }
}
class SMS: NotificationService{
    func send() {
        print("Sending by SMS")
    }
}

class NotificationManager{
    func sendNotification(notificationService: NotificationService){
        notificationService.send()
    }
}


let notiMangager = NotificationManager()
notiMangager.sendNotification(notificationService: SMS())
