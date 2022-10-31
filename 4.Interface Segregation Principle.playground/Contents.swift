import Foundation

struct User{
    var id, name: String
}

protocol UserFetcher{
    func getUser(id: String, user: [User]) -> Void
}

protocol UsersFetcher{
    func getUsers(onComplete: [User]) -> Void
}


class Login: UserFetcher{
    func getUser(id: String, user: [User]) {
        //
    }
}

class Friends: UsersFetcher{
    func getUsers(onComplete: [User]) {
        //
    }
}

