// The Swift Programming Language
// https://docs.swift.org/swift-book

func printBoard() {
        var isRunning = true
        let size = 6
        var missleNumber = 10
        var enemyShips = 4
var ocean = Array(repeating: Array(repeating: "~", count: size), count: size)
var guesses = Array(repeating: Array(repeating: "~", count: size), count: size)

        print("Welcome to Battleships!")
ocean.forEach { row in
print(row)

}
print("---------------------------------------------")
guesses[0][0] = "S"
guesses[5][2] = "S"
guesses[4][4] = "S"
guesses[3][4] = "S"
guesses.forEach { row in
print (row)
}
while isRunning == true {
print("select your row between 1 - 6")
        guard let userInput = readLine() else {
return
        } 
        let rowNumber = Int(userInput)! - 1

print("select your column between 1 - 6")
        guard let userInput2 = readLine() else {
return
        }
        let columnNumber = Int(userInput2)! - 1
missleNumber = missleNumber - 1
        ocean[rowNumber][columnNumber] = "X"
        if [rowNumber] == [0] && [columnNumber] == [0] {
                print("You hit my battleship")
                enemyShips = enemyShips - 1
        }
ocean.forEach { row in
print(row)
} 
print("---------------------------------------------")
guesses.forEach { row in
print (row)
}
if missleNumber == 0 {
        isRunning = false
        print("You Lose!!!")
}
if enemyShips == 0 {
        isRunning = false
        print("You Win Good JOB!!!")
}
}

print("---------------------------------------------")
guesses[1][1] = "S"
guesses[5][2] = "S"
guesses.forEach { row in
print (row)
}
} 



@main
struct SwiftPlayground {
    static func main() {
        printBoard()


    }
}
