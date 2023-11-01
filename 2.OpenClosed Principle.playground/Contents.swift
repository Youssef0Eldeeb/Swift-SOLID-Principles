import UIKit


// Open Closed Principle


protocol Shape{
    func draw()
}

class Rectangle: Shape{
    
    private let width: Double
    private let height: Double
    
    init(width: Double, height: Double) {
        self.width = width
        self.height = height
    }
    
    func draw() {
        print("this is rectangle and his area is \(width*height)")
    }
}

class Square: Shape{
    
    private let side: Double
    
    init(side: Double) {
        self.side = side
    }
    
    func draw() {
        print("this is rectangle and his area is \(pow(side, 2))")
    }
}

//class ShapePrinter{
//    func drawShape(shape: Shape){
//        if shape is Rectangle{
//            shape.draw()
//        }else if shape is Square{
//            shape.draw()
//        }
//    }
//}
// دغلط لاني لو عايز اضيف شيب جديد هدخل اعدل هنا واعمل اف جديده


class ShapePrinter{
    func drawShape(shape: Shape){
        shape.draw()
    }
}
// دلوقتي لو عايز اضيف شيب جديد زي مثلث مثلا هكريت كلاس جديد واخليه يكنفورم من ال شيب برتوكول واستخدمه عالطول مع ال الشيب برنتر

let square = Square(side: 3)

let shapePrinter = ShapePrinter()
shapePrinter.drawShape(shape: square)
