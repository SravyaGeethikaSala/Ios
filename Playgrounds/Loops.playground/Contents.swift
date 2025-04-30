import UIKit

// If Else
var batteryLevel = 45
if batteryLevel > 80 {
print("Battery is full with \(batteryLevel)% charge.") }
else if (batteryLevel > 20) {
print("Battery level is moderate at\(batteryLevel)%.") }
else {
print("Battery is low at \(batteryLevel)%. Please charge your device.") }

var inputNumber = -10
if inputNumber>0 {
    print("\(inputNumber) is a positive number.")
}else if (inputNumber<0){
    print("\(inputNumber) is a negative number")
       if(inputNumber%2==0){
            print("\(inputNumber) is a negative even number")
}
}else {
    print("The number  is 0")
}

var isAuthenticated = false
var userRole = "guest"
if isAuthenticated {
if userRole == "admin" {
print("Welcome, Admin! You have full access.") }
else {
print("Welcome, User! You have limited access.")}
}
else {
print("Please log in to continue.")
}

var appVersion = 2.1
if appVersion >= 3.0 {
print("Your app is up to date.")}
else if appVersion >= 2.0 {
print("A new version is available. Please update your app.") }
else {
print("Your app version is outdated. Update required.") }

// Switch
let digit: Character = "3"
switch digit {
case "1", "2":
print("It is digit 1 or 2")
case "3":
print("It is digit 3")
case "4":
print("It is digit 4")
default:
print("None of the cases above are executed")
}

let letter: Character = "O"
switch letter {
case "a", "e", "i", "o", "u":
print("The letter is a lowercase vowel")
case "A", "E", "I", "O", "U":
print("The letter is an uppercase vowel")
default:
print("The letter is a consonant")
}

let temperature: Double = 75.0
switch temperature {
case 80...100:
print("It's hot outside. Stay hydrated.")
case 60..<80:
print("The weather is pleasant. Enjoy your day.")
case 40..<60:
print("It's a bit chilly. Wear a jacket.")
default:
print("Extreme weather conditions.")
}

var a: Int = 2
var b: Int = 3
var c: Int = 4
switch a {
case 1:
print("\(c)~", terminator: "")
case 2:
print("\(a)~", terminator: "")
switch b {
case 2:
print("\(a)~", terminator: "")
case 3:
print("\(b)~", terminator: "")
switch c {
case 4:
print("\(c)~", terminator: "")
case 3:
print("\(b)~", terminator: "")
default:
print("No matching case found")
}
default:
print("No matching case found")
}
default:
print("No number is matching")
}

// While
var number: Int = 5
var factorial: Int = 1
print("Calculating the factorial of \(number):", terminator: " ")
while number > 1{
factorial *= number
number -= 1
}
print(factorial)

var currentValue: Int = 40
while currentValue >= 4 {
if currentValue % 4 == 0 {
print("\(currentValue)", terminator: " ")
}
currentValue -= 1
}

var x = 0
var y = 5
while y > 0 {
y -= 1
x = 0
while x < 5 {
x += 1
if x == y {
continue
}
print("(\(x), \(y))", terminator: " ")
}
}

var value = 80
while value > 40 {
value -= 20
}
print(value)
if value > 50 {
value -= 10
}
else {
value += 15
}
print(value)

// For Loops

let n = 50
var sum = 0
for number in 1...n {
sum += number
}
print("The sum of the first \(n) natural numbers is \(sum)")

let rangeLimit = 15
     print("Odd numbers up to \(rangeLimit):", terminator: " ")
     for number in 1...rangeLimit {
            if number % 2 != 0 {
                print(number, terminator: " ")
            }
     }
     print()

let maxAttempts = 5
var attempts = 0
let isPremiumUser = false
 
for _ in 1...maxAttempts {
attempts += 1
if isPremiumUser {
if attempts > 2 {
print("Congratulations! You've won $\(maxAttempts - 1).")
break
}
}
else {
if attempts > 4 {
print("You've won $\(maxAttempts - 4).")
break
}
}
}

