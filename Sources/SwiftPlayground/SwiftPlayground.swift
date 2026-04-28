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

    //Ask the user for their input and sets requirements for their input
    print("How many kg of kumara would you like to add?")
    if let addKumara = readLine(), let numberOfKumara = Int(addKumara),
        numberOfKumara <= higherKumaraLimit,
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
    ///create the func that lets the user buy kumara
    func sellKumara() {

        //sets the lowest limit of selling kumara
        let buyKumaraLowerLimit = 1

        //sets the highest limit of selling kumara as the total of the current kumara stock
        let buyKumaraHigherLimit = currentKumaraStock

        //set the maximum amount of bags that can be brought
        let bagsBroughtLimit = 5000

        //set the lowest limit of bags that can be brought
        let buyBagsLowerLimit = 1

        //set the highest limit of bags that can be brought
        let buyBagsUpperLimit = bagsBroughtLimit

        //asks user for their input and puts requirements
        print("How many kumara do you want to buy in kgs ($3 per kg)?")
        if let buyKumara = readLine(), let buyKumaraNumber = Int(buyKumara),
            buyKumaraNumber <= buyKumaraHigherLimit, buyKumaraNumber > buyKumaraLowerLimit{
        
            // turns amount of kumara brought into money
            let costOfKumara = Double(buyKumaraNumber) * 3.0

        print("how many bags would you like to buy (Bags cost 0.20) ?")
        if let buyBags = readLine(), let buyBagsNumber = Int(buyBags), buyBagsNumber <= buyBagsUpperLimit, buyBagsNumber >= buyBagsLowerLimit{
            
            let buyBagsQuanity = Double(buyBagsNumber)
            let costOfBags = buyBagsQuanity * 0.20
            let totalCost = costOfBags + costOfKumara
            print("The cost for kgs of kumara brought is $\(costOfKumara)")
            print("The cost for bags is $\(costOfBags)")
            print("The total cost is $\(totalCost)")
            }else {
            //if users input is invalid informs user and makes them go again
            print("That is an invalid input")
            return sellKumara()
            }
            currentKumaraStock = currentKumaraStock - buyKumaraNumber
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
            let maximum = 6

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

                        print("current kgs of kumara in the container is \(currentKumaraStock)kgs")
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
                    return kumaraMenu()
 

                    }
                        
                    }
                }
            }
        }
