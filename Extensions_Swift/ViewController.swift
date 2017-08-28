//
//  ViewController.swift
//  Extensions_Swift
//
//  Created by dev09 on 24/08/17.
//  Copyright © 2017 dev09. All rights reserved.
//

import UIKit

extension Int{
    func plusOne() -> Int {
        return  self + 1
    }
}
extension Double{
    var km: Double {return self*1000.00}
    var m: Double  {return self}
    var cm: Double {return self/(100.00)}
    var mm: Double {return self/(1000.0)}
    var ft: Double { return self / 3.28084 }
 
}
// extension + string
extension String{
    var mystr1: String {
        return self+"world"
    }
    var myStr2: String {
        return self+"google"
    }
    
    
}
var myInt = 0


class ViewController: UIViewController {

    let  oneInch  = 25.4.mm
    let oneFit = 1.ft
    let fiveKm = 5.km
    
    let distBetweenHomeAndOffice = 3.km + 200.m
    
    let defaultRect = Rect()
    let memberWiseRect = Rect(origin: Point(x: 2.0, y: 2.0),
                              size: Size(width: 5.0, heigth: 5.0))
    
    let centerRect = Rect(center: Point(x: 4.0, y: 4.0),
                          size: Size(width: 3.0, heigth: 3.0))
    
    // extension + String
    let firstString = "hello".mystr1
    let secondstring = "best search engine is ".myStr2
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        print("value of one inch is \(oneInch) meters")
        print("value of one fit is \(oneFit) meters")
        print("value of five kilometers is \(fiveKm) meters")
        print("distance is \(distBetweenHomeAndOffice) meters")
        print(centerRect)
        
        3.repetations {
            print("This line'll be repeated three times")
        }
        
        print(myInt.plusOne())
        print(10.plusOne())
        
        // extension + string 
        
        print("\(firstString)  ")
        print("\(secondstring)")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}
struct Size {
    var width = 0.0, heigth = 0.0
    
}
struct Point {
    var x = 0.0, y = 0.0
    
}
struct Rect {
    var origin = Point()
    var size = Size()
    
}
// You can extend the Rect structure to provide an additional initializer that takes a specific center point and size:
extension Rect{
    init(center: Point, size: Size) {
        let originX = center.x - (size.width/2)
        let originY = center.y - (size.heigth/2)
        self.init(origin: Point(x: originX, y: originY), size: size)
        
        
    }
}

// The following example adds a new instance method called repetitions to the Int type:
extension Int{
    func repetations(task: ()->Void)  {
        for _ in 0..<self {
            task()
        }
    }
}
// The repetitions(task:) method takes a single argument of type () -> Void, which indicates a function that has no parameters and does not return a value.











