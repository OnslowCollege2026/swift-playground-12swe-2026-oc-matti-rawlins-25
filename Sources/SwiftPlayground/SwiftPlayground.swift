// The Swift Programming Language
// https://docs.swift.org/swift-book

///creates this is the function that prints the menu
func kumaraMenu() {

    print("=== Kumara Stall ===")
    print("1. Add kumara to container")
    print("2. Sell kumara")
    print("3. Show current stock")
    print("4. Owner's summary")
    print("5. Exit")
    print("Choose an option:")

}
//create variable to store the kumara in
//nonisolated means the program won't crash because this variable is in a shared mutated state
nonisolated(unsafe)
    var currentKumaraStock = 0

//create variable to store the amount of kumara sold
//nonisolated means the program won't crash because this variable is in a shared mutated state
nonisolated(unsafe)
    var kumaraSold = 0

//create variable to store the amount of bags brought
//nonisolated means the program won't crash because this variable is in a shared mutated state
nonisolated(unsafe)
    var bagsBrought = 0

///creates a func to allow the user to add kumara to the shop
func addKumara(kumaraInStock: Int) {

    //sets a lower limit for amount of kumara that can be inside the kumara stall
    let lowerKumaraLimit = 0

    //sets a higher limit for amount of kumara that can be inside the kumara stall
    let higherKumaraLimit = 50

    //sets the limit for number of bags purchased before the stall runs out of stock
    let bagsBroughtLimit = 5000


//Ask the user for their input and sets requirements for their input
    print("How many kg of kumara would you like to add?")
    if let addKumara = readLine(), let numberOfKumara = Int(addKumara), numberOfKumara < higherKumaraLimit,
        numberOfKumara > lowerKumaraLimit
    {
//adds the user input into the current kumara stall stock
        print("You have added \(numberOfKumara)kg to the kumara container")
        currentKumaraStock = numberOfKumara + currentKumaraStock

        //if users input is invalid then makes the user reinput
    } else {
        print("That is an invalid input")
        addKumara(kumaraInStock: currentKumaraStock)

    }
    ///create the func that lets the user sell kumara
    func sellKumara() {

        //sets the lowest limit of selling kumara
        let sellKumaraLowerLimit = 1

        //sets the highest limit of selling kumara as the total of the current kumara stock
        let sellKumaraHigherLimit = currentKumaraStock

        //asks user for their input and puts requirements 
        print("How many kumara do you want to sell?")
        if let sellKumara = readLine(), let sellKumaraNumber = Int(sellKumara),
            sellKumaraNumber < sellKumaraHigherLimit, sellKumaraNumber > sellKumaraLowerLimit
        {
            //tell the user how many kumara they have sold
            print("A customer has brought \(sellKumaraNumber)kg of kumara")
            print("The customer used \(bagsBrought) bags to carry the \(sellKumaraNumber)kg of kumara they brought")

            //updates the kumara stock
            currentKumaraStock = currentKumaraStock - sellKumaraNumber
            //updates the kumara sold number
            kumaraSold = kumaraSold + sellKumaraNumber
        } else {
            //if users input is invalid informs user and makes them go again
            print("That is an invalid input")
            return sellKumara()

        }
    }

    @main
    struct SwiftPlayground {
        static func main() {

            //allows the while loop in the egg menu to start
            var isRunning = true

            //sets a minimum number for the user input on using the kumara menu
            let minimum = 0

            //sets a maximum number for the user input on using the kumara menu
            let maximum = 5

            //loop while continue till the user press exit
            while isRunning == true {

                //calls the kumara menu
                kumaraMenu()

                //lets the user select from kumara menu with limits
                if let userInput = readLine(), let Option = Int(userInput), Option > minimum,
                    Option < maximum
                {
                    
                    
                    if Option == 1 {

                        //let's the user add kumara to the current stock
                        addKumara(kumaraInStock: 0)
                    }

                    
                    if Option == 2 {

                        //let's the user sell kumara
                        sellKumara()
                    }

                    
                    if Option == 3 {

                        
                        print("current kg of kumara in the container is \(currentKumaraStock)kg")
                    }

                    
                    if Option == 4 {
print("Previous sales")
                    }

                    
                    if Option == 5 {

                        //thanks the user for buying from the kumara stall
                        print("Thank you for purchasing from the kumara stall")

                        //stops the while loop when the user exits the interfact
                        isRunning = false

                    }
                } else {

                    //if users input is invalid tell them and makes them run the code again
                    print("Select a valid option")
                    return (kumaraMenu())
                }
            }
        }
    }
}
