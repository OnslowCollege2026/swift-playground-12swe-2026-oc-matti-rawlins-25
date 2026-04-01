// The Swift Programming Language
// https://docs.swift.org/swift-book
nonisolated(unsafe)
var isRunning = true
nonisolated(unsafe)
var roomLoop = true
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
nonisolated(unsafe)
var inventory = [""]

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
print("5. Leave the room")
print("What would you like to do first?")

while roomLoop == true{
var userChoice = -1
while userChoice == -1 {
    userChoice = inputEngine(minimumChoice: 1, maximumChoice: 5) 
}
if userChoice == 1{
print ("As you gaze out the window you see the familiar skyline of EastPort above you. When you decide to peer down you see at street leave the slow hustle and bustle of people walking towards the market stall on the north side of town.")
}
if userChoice == 2{
print ("You walk up to the mirror and peer into it what do you see?")

print("What is your hair colour?")
print("1. blonde")
print("2. black")
print("3. brown")
print("4. grey")
print("5. red")
let userHairColour = inputEngine(minimumChoice: 1, maximumChoice: 5)

print("What is your eye colour?")
print("1.Brown")
print("2.Green")
print("3.Blue")
print("4.Light blue")
print("5.Gray")
print("6.Amber")
let userEyeColour = inputEngine(minimumChoice: 1, maximumChoice: 6)

print("What is your skin tone?")
print("1.Pale")
print("2.Tanned")
print("3.Olive")
print("4.Dark")
let userSkinTone = inputEngine(minimumChoice: 1, maximumChoice: 4)

print("As you peer into the mirror you see your \(userEyeColour) eyes wondering your face looking at your clean \(userSkinTone) skin and your messy \(userHairColour) hair")
}
if userChoice == 3{
print ("You look in the chest of drawers and find only a set of blankets.")

print("Do you want to?")
print("1. close the chest of drawers")
print("2. pick up the blankets and look under them")
print("3. take the blankets and close the chest of drawers immediately")
let userChoice = inputEngine(minimumChoice: 1, maximumChoice: 3)
if userChoice == 1{

}
if userChoice == 2{
inventory.forEach {item in
if item == ("Arcana orb") {
    print("You already find the item")
} else {print("You find an arcane orb and pick it up")
inventory.append("Arcana orb")
}}
}
if userChoice == 3{
inventory.forEach {item in
if item == ("Blankets") {
    print("You already find the item")
} else {print("You find an blankets and pick it up")
inventory.append("Blankets")
}}
}
if userChoice == 4{
print ("You look under the bed and all you can see in the darkness under there is a rubber ducky.")
}
if userChoice == 5{
    print("As you walk down the stairs outside your rooms door you smell the thick scent of beef stew and fresh bread and see Paul the barkeeper pouring the drinks and his miads walk around the tavern delivering meals and asking if people want second breakfast")
}
}
print("")
print("What do you want to do now?")
print("1. look out the window")
print("2. check yourself out in the mirror")
print("3. look in the chest of drawers")
print("4. look under the bed")
print("5. Leave the room")
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
        inventory = []
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
}