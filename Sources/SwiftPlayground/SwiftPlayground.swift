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
nonisolated(unsafe)
    var currentEggStock = 0
nonisolated(unsafe)
    var eggsSold = 0
func addEggs(eggsInStock: Int, amount: Int) {
    let lowerEggsLimit = 0
    let higherEggsLimit = 1000
    print("How many eggs would you like to add?")
    if let addEggs = readLine(), let numberOfEggs = Int(addEggs), numberOfEggs < higherEggsLimit,
        numberOfEggs > lowerEggsLimit
    {

        print("You have added \(numberOfEggs) to the total egg stock")
        currentEggStock = numberOfEggs + currentEggStock
    } else {
        print("That is an invalid input")
        addEggs(eggsInStock: currentEggStock, amount: 0)

    }
    func sellEggs() {
        let sellEggsLowerLimit = 1
        let sellEggsHigherLimit = currentEggStock
        print("How many eggs do you want to sell?")
        if let sellEggs = readLine(), let sellEggNumber = Int(sellEggs),
            sellEggNumber < sellEggsHigherLimit, sellEggNumber > sellEggsLowerLimit
        {
            print("You have sold \(sellEggNumber)")
            eggsSold = eggsSold + sellEggNumber
        } else {
            print("That is an invalid input")
            return sellEggs()

        }
    }

    @main
    struct SwiftPlayground {
        static func main() {

            var isRunning = true
            let minimum = 0
            let maximum = 6

            while isRunning == true {
                eggMenu()
                if let userInput = readLine(), let Option = Int(userInput), Option > minimum,
                    Option < maximum
                {

                    if Option == 1 {
                        addEggs(eggsInStock: 0, amount: 0)
                    }
                    if Option == 2 {
                        sellEggs()
                    }
                    if Option == 3 {
                        var viewEggsStocks = currentEggStock
                        print("current eggs stocks are \(viewEggsStocks)")
                    }
                    if Option == 4 {
                        print("You have sold \(eggsSold)")
                    }
                    if Option == 5 {
                        isRunning = false
                    }
                } else {
                    print("Select a valid option")
                    return (eggMenu())
                }
            }
        }
    }
}
