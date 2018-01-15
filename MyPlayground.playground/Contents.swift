//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"
str = "Hello,Swift"
let constStr = str
var nextYear: Int
var bodyTemp: Float
var hasPet: Bool
var arrayOfInts: [Int]
var dictionaryOfCapitalsByCountry: [String: String]
var winnigLotteryNUmbers: Set<Int>
let number = 42
let fmStation = 91.1
var countingUp = ["one", "two"]
let secondElement = countingUp[1]
let nameByParkingSpace = [13: "Alice", 27: "Bob"]
if let space13assignee = nameByParkingSpace[13] {
    print("Key 13 is assigned in the dictionary.")
}
let space42Assignee: String? = nameByParkingSpace[42]
for (space, name) in nameByParkingSpace {
    let permit = "Space \(space): \(name)"}
let emptyString = String()
let emptyArrayOfInts = [Int]()
let emptySetOfFloats = Set<Float>()
let defaultNumber = Int()
let defaultBool = Bool()
let meaningOfLife = String(number)
let availableRooms = Set([205, 411, 412])
let defaultFloat = Float()
let floatFromLiteral = Float(3.14)
let easyPi = 3.14
let floatFromDouble = Float(easyPi)
let floatingPi: Float = 3.14
countingUp.count
emptyString.isEmpty
countingUp.append("three")
var anOptionalFloat: Float?
var anOptionalArrayOfString: [String]?
var anOptionalArrayOfOptionalStrings: [String?]?
var reading1: Float?
var reading2: Float?
var reading3: Float?
reading1 = 9.8
reading2 = 9.2
reading3 = 9.7
if let r1 = reading1,
    let r2 = reading2,
    let r3 = reading3 {
        let avgReading = (r1 + r2 + r3) / 3
} else {
    let errorString = "Instrument reported a reading which was nil."
}
enum PieType: Int {
    case apple = 0
    case cherry
    case pecan
}

let favoritePie = PieType.apple

let name: String
switch favoritePie {
case .apple:
    name = "Apple"
case .cherry:
    name = "Cherry"
case .pecan:
    name = "Pecan"
}

let pieRawValue = PieType.pecan.rawValue
if let pieType = PieType(rawValue: pieRawValue) {
    // Got a valid 'pieType'!
    print("\(pieType)")
}
var welcome = "Hello"
welcome.insert("!", at: welcome.endIndex)
welcome.insert(contentsOf: " there", at: welcome.index(before: welcome.endIndex))
welcome.remove(at: welcome.index(before: welcome.endIndex))
welcome
let range = welcome.index(welcome.endIndex, offsetBy: -6)..<welcome.endIndex
welcome.removeSubrange(range)
var namesOfIntegers = [Int: String]()
namesOfIntegers[16] = "sixteen"
namesOfIntegers.keys


