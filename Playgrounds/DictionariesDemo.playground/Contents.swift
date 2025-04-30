import UIKit

var capitals = ["Arkansas":"LittleRock","Georgia":"Atlanta"]
print(capitals)
print(capitals.count)

var numbers = [1:"One",2:"two",3:"Three"]
print(numbers)
numbers[4] = "Four"
print(numbers)


var courses = [44542: "Java", 44650: "Web Apps", 44732: "Advanced Database"]

//print("Before changing \(courses)")
//courses[44542] = "Java Script"
//print("After Changing \(courses)")

// print(courses[44650])

// courses.removeValue(forKey: 44650)
//(courses)

for (key,values) in courses{
print(key)
}

for(key, values ) in courses{
print(values)
}

for (key,values) in courses
{
print("\(key) : \(values)")
}
