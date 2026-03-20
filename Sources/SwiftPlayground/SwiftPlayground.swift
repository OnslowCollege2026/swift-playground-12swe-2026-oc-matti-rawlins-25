// The Swift Programming Language
// https://docs.swift.org/swift-book

let menuLowerBoundary = 1
let menuUpperBoundary = 5

func gameMenu() { 
    print("Welcome to incredible text based adventure!!!!!")
    print("Indie game fr fr")
print("")
    print("")
    print("1.Start new game")
    print("2.Wipe data")
    print("3.See progress")
    print("4.Game advice")
    print("5.Quit")

    guard let userInput = readLine(), if userInput >= menuLowerBoundary {}, if userInput <= menuUpperBoundary {}, else { 
        
return
    } 
    
    
    
}

@main
struct SwiftPlayground {
    static func main() {
    
    }
}
