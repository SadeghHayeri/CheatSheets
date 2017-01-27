// tips: simicolon not needed;

// #variables
var i = 100
var d = 100.0
var s = "sadegh"
var b = true

var ii : Int
var dd : Double
var ss : String
var bb : Bool

// constant with 'let'
let x = 100

// string templetes
print("number \(i * 100)!")

// tips: can't use variable before initialized!
// print( ii ) <- error!

// tips: variables dosen't convert automaticly
// print( i * d ) <- error!
print( Double(i) * d )

// #conditions
if i == 1000 {
    print("yeah!")
}

// tips: () not need!

// tips: only boolians can be use
// if i {} <- error!

// tips: inline if dosen't support!

switch i {
case 1:
    print("one")
case 2:
    print("two")
case 4...10:    // use range instead number!
    print("four to ten")
default:
    break   // break need if code not exist!
}

// #loops

while i < 10000 {
    //...
}

repeat {
    //...
} while i < 10000

for j in 0..<100 {  // "..<": half-open range (0 - 99)
    print(j)
}


// #functions
func f( name:String, age:Int, grade:Double = 10 ) { // defult value supported!
    print("hi \(name)!")
    
    // tips: swift defults -> all variables are constant!
    // age++ <- error!
    
    var grade = grade   // to make grade changable
    grade += 1  // tips: "grade++" not support!
}

f(name:"sadegh", age:20, grade:19)

func f2() -> String {   // -> for return type!
    return "salam!"
}
print( f2() )










