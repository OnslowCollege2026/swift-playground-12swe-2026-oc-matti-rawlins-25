// The Swift Programming Language
// https://docs.swift.org/swift-book

///creates this is the function that prints the menu
func eggMenu() {

    print("==== Egg Shop ====")
    print("1. Add eggs")
    print("2. Sell eggs")
    print("3. Show current stock")
    print("4. Show current eggs sold")
    print("5. Reset the Shop")
    print("6. Exit")
    print("Choose an option:")

}
//create variable to store the eggs in
//nonisolated means the prograam won't crash because this variable is in a shared mutated state
nonisolated(unsafe)
    var currentEggStock = 0

//create variable to store the amount of eggs sold
//nonisolated means the prograam won't crash because this variable is in a shared mutated state
nonisolated(unsafe)
    var eggsSold = 0

///creates a func to allow the user to add eggs to the shop
func addEggs(eggsInStock: Int) {

    //sets a lower limit for amount of eggs that can be inside the egg shop
    let lowerEggsLimit = 0

    //sets a higher limit for amount of eggs that can be inside the egg shop
    let higherEggsLimit = 1000

//Ask the user for their input and sets requirements for their input
    print("How many eggs would you like to add?")
    if let addEggs = readLine(), let numberOfEggs = Int(addEggs), numberOfEggs < higherEggsLimit,
        numberOfEggs > lowerEggsLimit
    {
//adds the user input into the current egg shop stock 
        print("You have added \(numberOfEggs) to the total egg stock")
        currentEggStock = numberOfEggs + currentEggStock

        //if users input is invalid then makes the user reinput
    } else {
        print("That is an invalid input")
        addEggs(eggsInStock: currentEggStock)

    }
    ///create the func that lets the user sell eggs 
    func sellEggs() {

        //sets the lowest limit of selling eggs
        let sellEggsLowerLimit = 1

        //sets the highest limit of selling eggs as the total of the current egg stock
        let sellEggsHigherLimit = currentEggStock

        //asks user for their input and puts requirements 
        print("How many eggs do you want to sell?")
        if let sellEggs = readLine(), let sellEggNumber = Int(sellEggs),
            sellEggNumber < sellEggsHigherLimit, sellEggNumber > sellEggsLowerLimit
        {
            //tell the user how many eggs they have sold
            print("You have sold \(sellEggNumber)")

            //updates the eggs sold number
            eggsSold = eggsSold + sellEggNumber
        } else {
            //if users input is invalid informs user and makes them go again
            print("That is an invalid input")
            return sellEggs()

        }
    }

    @main
    struct SwiftPlayground {
        static func main() {

            //sets isRunning to true
            var isRunning = true

            //sets a minimum number for the user input on using the egg menu
            let minimum = 0

            //sets a maximum number for the user input on using the egg menu
            let maximum = 6

            //loop while end 
            while isRunning == true {

                //calls the egg menu
                eggMenu()

                //lets the user select from egg menu with limits
                if let userInput = readLine(), let Option = Int(userInput), Option > minimum,
                    Option < maximum
                {
                    
                    //when option 1 is selected this code runs
                    if Option == 1 {

                        //calls addEggs function
                        addEggs(eggsInStock: 0)
                    }

                    //when option 2 is selected this code runs
                    if Option == 2 {

                        //calls the sellEggs function
                        sellEggs()
                    }

                    //when option 3 is selected this code runs
                    if Option == 3 {

                        //makes the currentEggStock viewable to the user
                        var viewEggsStocks = currentEggStock
                        print("current eggs stocks are \(viewEggsStocks)")
                    }

                    //when option 4 is selected this code runs
                    if Option == 4 {

                        //shows the user the number of eggs that have been sold
                        print("You have sold \(eggsSold) eggs")
                    }

                    //when option 5 is selected this code runs
                    if Option == 5 {

                        //resets currentEggStock to zero
                        currentEggStock = 0

                        //reset eggsSold to zero
                        eggsSold = 0

                        //tells the user they reset the shop
                        print("Egg shop has been reset")
                    }

                    //when option 6 is selected this code runs
                    if Option == 6 {

                        //thanks the user for using the egg shop
                        print("Thank you for using the egg shop")

                        //sets isRunning to false and stops the while loop
                        isRunning = false

                    }
                } else {

                    //if users input is invalid tell them and makes them run the code again
                    print("Select a valid option")
                    return (eggMenu())
                }
            }
        }
    }
}
