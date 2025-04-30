import UIKit

var fact = "Swift is a type safe language"
var dev = "Development of swift began in 2010"
var author = "Swift was created by Chris Lattner"


print(author[author.startIndex])
print(author[author.index(after: author.startIndex)])
print(author[author.index(before: author.endIndex)])
print(author[author.index(author.startIndex,offsetBy: 6)]) // starts with 0
print(author[author.index(author.endIndex,offsetBy: -5)]) //  starts with 1

print(dev[dev.startIndex])
print(dev[dev.index(after: dev.startIndex)])
print(dev[dev.index(before: dev.endIndex)])
print(dev[dev.index(dev.startIndex,offsetBy: 7)]) // starts with 0
print(dev[dev.index(dev.endIndex,offsetBy: -4)]) //  starts with 1

print(fact[fact.startIndex])
print(fact[fact.index(after: fact.startIndex)])
print(fact[fact.index(before: fact.endIndex)])
print(fact[fact.index(fact.startIndex,offsetBy: 3)]) // starts with 0
print(fact[fact.index(fact.endIndex,offsetBy: -8)]) //  starts with 1

var shoppingList = "The shopping list contains: "
var foodItems = "Cheese, Butter, Chocolate Spread"
var clothes = "Socks, T-shirts"

if clothes.hasPrefix("Socks") {
    print ("The first item in clothes is socks")
} else {
    print ("Socks is not the first item in clothes")
}

print(foodItems.split(separator: ","))

if clothes.contains(",") {
    print("Clothes contains more than one item")
    }else{
                print("Clothes contain only one item")
}

print(foodItems[foodItems.startIndex..<foodItems.index(foodItems.endIndex,offsetBy: -7)])

print(shoppingList += foodItems[foodItems.index(foodItems.startIndex, offsetBy: 8)..<foodItems.endIndex])

print(clothes.remove(at: clothes.firstIndex(of: "T")!))

print(clothes.remove(at: clothes.firstIndex(of: "-")!))

print("\(shoppingList), \(clothes)")

clothes.insert(contentsOf: ", Trousers", at: clothes.endIndex)

var firstIndexOfR = shoppingList.index(after: shoppingList.firstIndex(of: "r")!)

print(shoppingList[..<firstIndexOfR])

var course = "44643-Mobile Computing-iOS"
let courseNumber = course.split (separator: "-")[0]
print(courseNumber)

