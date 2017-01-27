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


// #arrays
var array = [5, 6, 5, 4, 3, 2, 1]
var emptyArray = [String]()

emptyArray.append("sadegh")
emptyArray += ["hayeri"]

for name in emptyArray {
    print(name)
}

emptyArray.insert(":)", at: 2)
emptyArray.remove(at: 2)
emptyArray.removeLast()

if emptyArray.isEmpty {
    emptyArray.removeAll()
}

// #dictonaries
var dict =  ["teh": "tehran", "mash": "mashhad", "ya": "yazd"]
var emptyDic = [Int:String]()

print( dict["teh"]! )

// add new key
dict["t"] = "test"
dict.updateValue("test2", forKey: "t")

// remove key
dict["t"] = nil
dict.removeValue(forKey: "t")



// # Tuples!

for (key, val) in dict {
    print("\(key) with value of \(val)")
}

// use in functions returns!
func f3() -> (String, Int) {
    return ("sadegh", 123)
}
var resultF3 = f3()
print( resultF3.0, resultF3.1 )

// you can assign name for it!
func f4() -> (name:String, number:Int) {
    return ("javad", 321)
}
var resultF4 = f4()
print( resultF4.name, resultF4.number )

// or make variable from it!
var ( f4Name, f4Number ) = f4()
print( f4Name, f4Number )



// #optional

var newI : Int? // "?" means newI can be NULL(nil)

if newI != nil {
    print(newI!)    // "!" end of newI means we ensure newI have intialized!
}

// good codeStyle for using dicts!
if var res = dict["test"] {
    print(res)
} else {
    print("not found!")
}



// #enums

enum Gender {
    case male
    case female
    //...
}

var ddd : Gender
ddd = Gender.male

// tips: Day not needed!
ddd = .female

switch ddd {
case .male:
    break
case .female:
    break
//...
}



// #closure

func run( myFunc : ()->String, count : Int ) {  // get closure that get nothing as args, and return string type
    var sss : String = ""
    for _ in 0..<count {    // tips: when dosen't use variable, use _ !
        sss += myFunc()
    }
    print(sss)
}

// make small closure!
run(myFunc: {
    return "sadegh "
}, count: 5)
















