//: A UIKit based Playground for presenting user interface
  
import UIKit
//import PlaygroundSupport
//
//class MyViewController : UIViewController {
//    override func loadView() {
//        let view = UIView()
//        view.backgroundColor = .white
//
//        let label = UILabel()
//        label.frame = CGRect(x: 150, y: 200, width: 200, height: 20)
//        label.text = "Hello World!"
//        label.textColor = .black
//
//        view.addSubview(label)
//        self.view = view
//    }
//}
//// Present the view controller in the Live View window
//PlaygroundPage.current.liveView = MyViewController()



// function in swift
//Functionsgenerally in programing refer to a block of code that perfos specifice tasks

func max  (`let` y : Int, `let` x : Int ) -> Int{
    if (x < y ){
        
        return y
    }else if (y < x ) {
        return x
        
        
    } else  if (x == y){
        
        return 0
    }
    return 0
    
    
}

var f : Int = 4
print  (max(5,5))

// example with arrays
func minMax ( let arr: [Int]) -> (Int ,Int){
    
    var min = -1
    var max = -1
    var isFirstTime = true
    for  x in arr  {
        
        
        if (isFirstTime || x < min) { min = x}
        if (isFirstTime || x > max)  { max  = x }
        isFirstTime = false
    }
    
    return (min, max)
}
let numbers = [2,4,3,6,20,30, 0,-2,-6]

let minAndMax = minMax(let :numbers)

print("min; \(minAndMax.0) max: \(minAndMax.1)") // print the smallesand largest value


// External parameter specification in functions
//func max (firstName z:String , lastOne y:String ) -> String{
//
//    max(firstName : "gbago", lastOne  )
//
//}


func max(firstName z: String, lastOne y: String) -> String {
    return max(firstName: "gbago", lastOne: y)
}


 //Scope

func increase ( a:Int) -> Int{
    
    return a + 2
    
 

    
}
print(increase(a:2))


// Enums

//we can use a switch statement for aproblem as such as printing a text for the plants weather perception below
 

var planet : String  = "Mars0"

switch( planet ) {
case "Earth" :print("The weather is just right")
case  "Mars" : print("Way too cold")
case  "SATON" : print("Reallly hot today")
default : print("Looking to explore today")  // this would be the default case if there be any uncaptured value
    
}
var distanceFromSu = [2000,2500, 34000]

//using Integers for the bove implementation  would bw
var planet2 : Int = 2

switch( planet2 ) {
case 1 :print("The weather is just right")
case 2 : print("Way too cold")
case 3 : print("Reallly hot today")
default : print("Looking to explore today")  // this would be the default case if there be any uncaptured value
    
}


print(distanceFromSu[planet2])



//to use constants for the above



let  planet_earth = 1
let  planet_mars = 2
let  planet_saton = 1


var planet3 = planet_saton


switch( planet3 ) {
case planet_earth :print("The weather is just right")
case planet_mars : print("Way too cold")
case planet_saton : print("Reallly hot today")
default : print("Looking to explore today")  // this would be the default case if there be any uncaptured value
}
print(distanceFromSu[planet3])






//to use enum for the above

enum Planet {
    
 case   Earth , Mars, Saton
}
var planet4 = Planet.Saton

switch( planet4 ) {
case.Earth :print("The weather is just right")
case .Mars : print("Way too cold")
case .Saton : print("Reallly hot today")
    
}
print(distanceFromSu[planet4.hashValue])
