import UIKit

var players : Set<String> = ["Shubman Gill", "Virat Kohli", "Shreyas Iyer", "Rahul"]

print(players.count)

print(players)

print(players.contains("Rahul"))

players.insert("Rohit Sharma")
print(players)

players.remove("Virat Kohli")
print(players)


