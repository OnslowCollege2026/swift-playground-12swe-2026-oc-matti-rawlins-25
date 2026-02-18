// The Swift Programming Language
// https://docs.swift.org/swift-book


func eggMenu() {

print("==== Egg Shop ====")
print("1. Add eggs")
print("2. Sell eggs")
print("3. Show current stock")
print("4. Show current eggs sold")
print("5. Exit")
print("Choose an option:")
}

func  addEggs(eggsInStock: Int, amount: Int) { 
var eggsInStock = 0

}

@main
struct SwiftPlayground {
    static func main() {

        var isRunning = true
        let minimum = 1
        let maximum = 5

        while isRunning == true{
        eggMenu()
        if let userInput = readLine(), var Option = Int(userInput), Option > minimum, Option < maximum {
        
        if Option == 1 {
        print("How many eggs would you like to add?")
        let userInput = readLine(), numberOfEggs = Int(userInput)
        }
        }
        else {
        print("Select a valid option")
        return(eggMenu())
        }
    }
}
}