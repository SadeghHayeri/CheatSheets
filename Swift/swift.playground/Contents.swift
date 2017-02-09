// tips: simicolon not needed;

/////////////////// variables

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




/////////////////// conditions

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






/////////////////// loops

while i < 10000 {
    //...
}

repeat {
    //...
} while i < 10000

for j in 0..<100 {  // "..<": half-open range (0 - 99)
    print(j)
}






/////////////////// functions

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








/////////////////// arrays

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






/////////////////// dictonaries

var dict =  ["teh": "tehran", "mash": "mashhad", "ya": "yazd"]
var emptyDic = [Int:String]()

print( dict["teh"]! )

// add new key
dict["t"] = "test"
dict.updateValue("test2", forKey: "t")

// remove key
dict["t"] = nil
dict.removeValue(forKey: "t")








/////////////////// Tuples!

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









/////////////////// optional

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







/////////////////// enums

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









/////////////////// closure

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





///////////////////////////////////// Classes

class MyClass {
    
    init( name : String, score : Int ) {
        self.name = name
        self.score = score
    }
    
    deinit {
        // do something
    }
    
    var name : String
    var score : Int
    
    
}

func getSampleNum() -> Int {
    return 100
}

class MyClass2 : MyClass {
    
    init(name: String, score: Int, level : String) {
        self.level = level
        super.init(name: name, score: score)
    }
    
    override init(name: String, score: Int) {   // tips: override must be write
        self.level = "none"
        super.init(name: name, score: score)
    }
    
    func speak() -> String {
        return "hello, I'm \(name) with score \(score)!"
    }
    
    var level : String
    
    var test : String {
        get {   // tips: make this readonly
            return "hi"
        }
        set {   // tips: make setter for it (newValue)
            self.test = newValue
        }
    }
    
    class var number: Float {   // tips: define static variable
        return 10.5
    }
    
    var test2 = getSampleNum()  // tips: you can use functions
    lazy var test3 = getSampleNum() // tips: lazy variable dont call until we need it
    
    var name2 : String = "sadegh" {
        // tips: willSet return newValue, didSet return oldValue
        willSet {
            print( "new value set \(newValue)!" )
        }
        didSet {
            print( "old value was \(oldValue)!" )
        }
    }

}

var nc = MyClass(name: "sadegh", score: 20)
var nc2 = MyClass2(name: "asghar", score: 10, level: "basic")

print( nc2.speak() )


//////////// struct

struct MyStruct {
    init( name : String, score : Int ) {
        self.name = name
        self.score = score
    }
    
    var name : String
    var score : Int
    
}

// tips: structs in swift are same as classes, and only different is Structs are callByValue but Classes are callByRefrence


if nc === nc2 {
    // === use for deeper equality!
}


/////////////// ??

var ppp : String?
var sss : String = "sadegh"

// tips: if 'ppp' is not nil, o = ppp, but if 'ppp' is nill, o equal to 'sss'
var o = ppp ?? sss



/////////////// type checking

if ppp is String? {
    print("yes it a string!")
    let pppp = ppp as String?   // downcast ppp to string?
}

if let pppp = ppp as String? {
    print("this is fast downCast!")
}





/////////////// Any & AnyObject

var any : Any

any = "Sadegh!"
any = 123
any = true

var anyObject : AnyObject





//////////////// Protocols

protocol myProtocol {
    func clean()
    func speak()
    
    func testFunction() -> Bool
    
    var pVar : Bool { get set }
}


class MyClass3 : myProtocol {
    
    func clean() {
        
    }
    
    func speak() {
    }
    
    func testFunction() -> Bool {
        return true
    }
    
    var pVar: Bool = true

}





/////////////////////// Extensions

extension String {
    func myStringFunc() -> String {
        return self + " " + self
    }
}

var myString : String = "sadegh"
print( myString.myStringFunc() )





//////////////////////// Generics (templete)

func myGenericFunction< T >(theArray : [T]) {
    for item in theArray {
        print( item, ", " )
    }
}

myGenericFunction( theArray: ["sadegh", "asghar", "ali"] )
myGenericFunction( theArray: [1, 3, 5, 6] )









