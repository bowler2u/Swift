import Foundation



func validate(year: Int)-> String{
    var msg = " "
switch year{
   case 0...2011: 
 msg = "your card has expired"
   case 2012...2015:
msg = "your card has expired but you can renew it "
   case 2016...2019:
msg = "your card valid! "
   default: 
   msg = "please entre a valid year "
        }
        return msg
}


print(validate(year: 2019))


// Unwrapping optional values
var message: String?  // it could be nil or it could be a value

message = "hi this is john doe"

print(message) //Optional("hi this is jhon doe")

print(message!) // hi this is jhon doe



// Checking the optional value and avoiding getting nil


//(1) if condition
var inputField: String?
inputField = nil // inputField = "" 
if (inputField == "" || inputField == nil){
print("please entre a value")
}



//(2) if let
// https://developer.apple.com/documentation/swift/optional
/* if let to check the value of an optional if it exist then run a code
quite the function */

var optionalVal: Int?
optionalVal = 11  // or optionalVal = nil

if let val = optionalVal {
print("There is a value: \(val)")
}else{
print("There is no value")
}



//(2) gurd let
/* if guard let to check the value of an optional if it exist then run a code
quite the function */
func printYear(year: Int?){
   
guard let inputVal =  year else {
    print("value does not exist")
    return  /*  you return before you pass the value somewhere and it said found nil value 
    or provide an alert before you throw the nil value into any function */
}
print("the entred year is \(year!)")
}

printYear(year: 2019) // printYear(year: nil) will return     print("value does nor exist") 

 





// (do try catch) for error handling
// it is utilized when you work with a function that throws an error

/* sample of function that throws
-  imageNameVariable.write(to: imagePath)
- Data(contentsOf: URL)
-
so if you are using one of the func that throws an error
 xcode will not let you proceed till you handel the error
*/
let imageName = "img"
do{
    //write() is a func that throws
   try imageName.write(to: "imagePath")
    // if it goes successfuly then do something here
} catch {
    // or handle the error here
    print("there is an error: \(error)")
}
