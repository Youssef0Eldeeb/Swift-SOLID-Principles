import UIKit

// MARK: - Liskov Principle by Protocols

protocol  Polygon {
    var area: Float {get}
}

class Rectangle: Polygon{
    private let width: Float
    private let length: Float
    
    init(width: Float, length: Float){
        self.width = width
        self.length = length
    }
    
    var area: Float {
        return width * length
    }
}

class Squre: Polygon{
    private let side: Float
    
    init(side: Float){
        self.side = side
    }
    
    var area: Float{
        return pow(side, 2)
    }
}

// main

func printArea(of polygon: Polygon){
    print(polygon.area)
}

let rectangle = Rectangle(width: 2, length: 5)
let square = Squre(side: 3)

printArea(of: rectangle)
printArea(of: square)



// MARK: - Other way to achieve Liskov Principle by Inheritance
class Post{
    func createPost(post: String){
        print("normal post")
    }
}
class TagPost: Post{
    override func createPost(post: String) {
        print("tag post")
    }
}
class MentionPost: Post{
    override func createPost(post: String) {
        print("mention post")
    }
}

// main

let myPost: String = "@Youssef"

let post: Post

if myPost.starts(with: "@"){
    post = TagPost()
}else if  myPost.starts(with: "#"){
    post = MentionPost()
}else{
    post = Post()
}

post.createPost(post: myPost)

