// The Swift Programming Language
// https://docs.swift.org/swift-book

let menuLowerBoundary = 1
let menuUpperBoundary = 5

func inputEngine(minimumChoice: Int, maximumChoice: Int) -> Int{
guard let userInput = readLine(), let userInput3 = Int(userInput) else {
    return -1
}
return userInput3
}

func gameMenu() -> Int { 
print("")
    print("")
    print("1.Start new game")
    print("2.Wipe data")
    print("3.See progress")
    print("4.Game advice")
    print("5.Quit")

print("Enter a number between 1 and 5")
    guard let userInput = readLine(), let UserInput2 = Int(userInput), UserInput2 >= menuLowerBoundary , UserInput2 <= menuUpperBoundary  else { 
        
        print("Error: please pick a accepted value")
return -1
    } 

    return UserInput2
    
} 

func createGameState() {
print("Enter your name")
guard let userInput = readLine() else{
    return
}
let playerName = userInput
print ("WELCOME TO PHANDELVER, \(playerName)!!!!!")

print("You start in a musty room above of a small tavern called the yellow fish.")
print("As you wake up from your night of drinking and slowly rise from your bed you start to look around the room you hazily remember walking into last night with the tavern keeper Paul.")
print("Would you like to check out:")
print("1. look out the window")
print("2. check yourself out in the mirror")
print("3. look in the chest of drawers")
print("4. look under the bed")
print("What would you like to do first?")

var userChoice = inputEngine(minimumChoice: 1, maximumChoice: 4)
if userChoice == 1{

}
if userChoice == 2{

}
if userChoice == 3{

}
if userChoice == 4{

}
}

@main
struct SwiftPlayground {
    static func main() {
        print("Welcome to incredible text based adventure!!!!!")
    print("Indie game fr fr")
    var isRunning = true

    while isRunning == true {
    let menuChoice = gameMenu()
        if menuChoice == 1{
            createGameState()
    }
    if menuChoice == 2{

    }
    if menuChoice == 3{

    }
    if menuChoice == 4{

    }
    if menuChoice == 5{
        isRunning = false
    }
        
    }
}
}