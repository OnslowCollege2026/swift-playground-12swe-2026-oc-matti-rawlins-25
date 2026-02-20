// The Swift Programming Language
// https://docs.swift.org/swift-book
let currentEggStock = 0

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
let lowerEggsLimit = 0
let higherEggsLimit = 1000
print("How many eggs would you like to add?")
if let addEggs = readLine(), let numberOfEggs = Int(addEggs), numberOfEggs < higherEggsLimit, numberOfEggs > lowerEggsLimit {


print("You have added \(numberOfEggs) to the total egg stock")
let viewEggsStocks = numberOfEggs + currentEggStock
} else {
print("That is an invalid input")
addEggs(eggsInStock: currentEggStock, amount: 0)


}

}

@main
struct SwiftPlayground {
    static func main() {

        let isRunning = true
        let minimum = 0
        let maximum = 6

        while isRunning == true{
        eggMenu()
        if let userInput = readLine(), let Option = Int(userInput), Option > minimum, Option < maximum {
        
        if Option == 1 {
        addEggs(eggsInStock: 0, amount: 0) 
        }
        if Option == 3 {
        print("current eggs stocks are \(currentEggStock)")
        }
        } 
        else {
        print("Select a valid option")
        return(eggMenu())
        }
    }
}
}