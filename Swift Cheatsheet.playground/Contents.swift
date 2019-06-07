//: Swift basics 💻

// ___________________________VARIABLES__________________________
var str = "Hello, playground 👋🏻"
var name = "Amir"
var age = 17

// _______________________PRINT TO CONSOLE_______________________
print("Swift is fun. Here we go 🥰")

// ___________________________CONSTNTS___________________________
let PI = 3.14
let capitalEgypt = "Cairo"

// ___________________________DATA TYPES_________________________
// DECLARING THE DATA TYPE IS OPTIONAL
var id: Int = 46723476342
var address: String = "46 Sixth of October st, Omrania, Giza, Egypt 🇪🇬"
var isMarried: Bool = false
let securityCode: Int = 4328790
var f: Float = 2.1
var d: Double = 2.11
var char: Character = "a"

// __________________________ARRAYS______________________________
var myAnimals = ["Dog 🐶", "Cat 😸", "Bird 🦅"]
myAnimals += ["Mouse 🐭", "Turtle 🐢"]
myAnimals.remove(at: 1)

var empty = [String]()

myAnimals[0]

for animal in myAnimals {
    print(animal)
}
// Alternative below 🔽

//for index in 0...myAnimals.count - 1 {
    //print(myAnimals[index])
//}


// _________________________DICTIONARIES_________________________
var carDB = Dictionary<String, String>()
var easyCarDB = [String: String]() // Another way
carDB["RUB 123"] = "Red Porche"
carDB["DFS 345"] = "Yellow Ferrari"
carDB["AUD 123"] = "Blue Audi"
// print(carDB["AUD 123"]!)
for (lisence, car) in carDB {
    print(car + " is signed as: " + lisence)
}

// ___________________________ARITHMETIC_________________________
var sum = 5 + 5
var sub = 5 - 5
var mul = 5 * 5
var div = 5 / 5
var mod = 5 % 5

// CASTING
var strNum: String = "15"
strNum = String(2020);

// _________________________CONDITIONALS_________________________
// IF STATEMENT
let a: Int = 0;
if a < 50 && a != 0{
    // If the a is less than 50 print the phrase below
    print("'a' is less than 50")
}else if a > 50 {
    // If the a is more than 50 print the phrase below
    print("'a' is more than 50")
}else if a == 50 {
    // If the a is equal to 50 print the phrase below
    print("'a' equals 50")
}

// SWITCH STATEMENT
switch char {
case "b":
    print("It's a 'B'")
case "c":
    print("It's a 'C'")
default:
    // Do nothing
    char = "y"
}

// ___________________________LOOPS___________________________
// FOR LOOP
var total: Int = 0;
for index in 1...5 {
    // Sum of 1 to 100
    total += index
}

// WHILE LOOP
var counter: Int = 1;
while counter <= 100 {
    counter
    counter += 1
}

// REPEAT-WHILE LOOP
repeat {
    counter = counter - 1
    "Counter is: " + String(counter)
}while counter > 1

// ________________________FUNCTIONS__________________________
func addTwoNumbers(first x: Int, second y: Int) -> Int{
    return x + y
}

func sayHello(name: String){ // -> Void
    print("Hello" + name)
}

// ________________________OOP____________________________
// Classes
class BlogPost {
    // Properties
    var title: String = ""
    var body: String = ""
    var author: String = ""
    var numberOfComments: Int = 0
    
    // Initializer
    init(title: String, body: String, author: String = "Amir") {
        self.title = title
        self.body = body
        self.author = author
    }
    
    // Method
    func addComment(){
        numberOfComments += 1
    }
}

// Create an object
let myPost = BlogPost(title: "Hello, Objective-C", body: "Objective-C needs an update!")
// Setting values to the properties
myPost.title = "Hello, Swift!"
myPost.body = "Hello!"
myPost.addComment()
// print(myPost.numberOfComments) => 0

// Inheritence
class Car {
    var maxSpeed: Int = 200
    
    func drive(){
        // InString concatination
        print("Driving at: \(maxSpeed)")
    }
    
}

class FutureCar: Car {
    // Overriding a method
    override func drive() {
        print("Driving at: \(maxSpeed + 500)")
    }
    
    // Inherit value by "super"
    func driveSlow(){
        super.drive()
    }
    
    func fly(){
        print("Flyig")
    }
}

// Creating a FutureCar object
let myNewRide = FutureCar()
// myNewRide.driveSlow() => Criving at: 200

// Adding Optionals
class Person {
    var name = ""
}

class Post {
    // Optionals
    var title: String?
    var body: String = ""
    var author: Person?
    
    init() {
        title = "My title"
        author = Person()
    }
    
    convenience init(customTitle: String){
        self.init()
        title = customTitle
    }
    
    // Computed Property
    var fullTitle: String {
        // Check if the optionals aren't empty
        if title != nil && author != nil {
            return title! + " by " + author!.name
        }else if title != nil {
            return title!
        }
        return ""
    }
}

// Create a post
let post: Post = Post()

// Optional Binding
if let actualTitle = post.title {
    actualTitle
}

if post.title != nil {
    post.title!
}

// Setting a title
post.title = "You are awesome!"

 // force unwrap
print(post.title! + " Have fun!")

// Play with properties
let myPost2 = Post()
myPost2.title = "Harry Potter"
myPost2.author = Person()
myPost2.author!.name = "Amir Hesham"

// Computed value of property
myPost2.fullTitle
