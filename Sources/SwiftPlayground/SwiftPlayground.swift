// The Swift Programming Language
// https://docs.swift.org/swift-book

func printBoard() {
    var isRunning = true
        let size = 6
var ocean = Array(repeating: Array(repeating: "~", count: size), count: size)
var guesses = Array(repeating: Array(repeating: "~", count: size), count: size)

        print("Welcome to Battleships!")
ocean.forEach { row in
print(row)

}
print("---------------------------------------------")
guesses[1][1] = "S"
guesses[5][2] = "S"
guesses.forEach { row in
print (row)
}
while isRunning == true {
print("select your row between 1 - 6")
        let userInput = readLine()!
        let rowNumber = Int(userInput)! - 1

print("select your column between 1 - 6")
        let userInput2 = readLine()!
        let columnNumber = Int(userInput2)! - 1

        ocean[rowNumber][columnNumber] = "S"
ocean.forEach { row in
print(row)

} 
else 

print("---------------------------------------------")
guesses[1][1] = "S"
guesses[5][2] = "S"
guesses.forEach { row in
print (row)
}
} 
}
@main
struct SwiftPlayground {
    static func main() {
        printBoard()


    }
}
