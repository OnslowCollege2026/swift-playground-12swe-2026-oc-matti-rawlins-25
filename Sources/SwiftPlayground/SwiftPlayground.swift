// The Swift Programming Language
// https://docs.swift.org/swift-book

@main
struct SwiftPlayground {
    static func main() {
    // Constants and variables.
var minChoice = 1

var maxChoice = 4

let firstCheck = "Hello"
let secondCheck = "Goodbye"
let thirdCheck = "Red"
let fourthCheck = "White"
let fifthCheck = "Name" 

//randomizes the options for the answer
var randomizeAnswers = Int.random(in:1...4)

    /// The vocabulary to test the user on.
    /// Each Inner array contains the English word, the correct answer in the target language, and then three incorrect answers
    let vocabulary: [[String]] = [
        ["1.こんにちは", "2.ヒア", "3.さようなら", "4.いい"],
        ["1.さようなら", "2.じゃあね", "3.こんにちは", "4.市場"],
        ["1.赤", "2.さようなら", "3.ヒア", "4.さようなら" ],
        ["1.白", "2.赤", "3.さようなら", "4.市場"],
        ["1.名前", "2.こんにちは", "3.じゃあね", "4.こんにちは"]
        ]

///the indices of the questions that the user got wrong.
var incorrectIndices: [Int] = []

///The number of questions the user got wrong first time around.
var incorrectCount = 0

//The number of questions that have been asked
var count = 0

var counter = 0

var score = 0
var wrongAnswer = [""]

    // loop until all of the vocabulary questions have been asked.
while count < vocabulary.count{
print("How do you say Hello in japanese?")
print(vocabulary[0])
let correctWord = vocabulary[counter][1]
let otherWords = vocabulary[counter].dropFirst(0)
let allAnswers = vocabulary[counter].shuffled()
if let userInput = readLine(), userInput.lowercased() == correctWord.lowercased() {
score = score + 1
print("Yes, \(correctWord) is correct!")
} else {
    incorrectIndices.append(counter)
    print("Sorry \(correctWord) was the correct answer")
}
counter = counter + 1
}
print("How do you say Goodbye in japanese?")
print(vocabulary[1])
let correctWord = vocabulary[counter][1]
let otherWords = vocabulary[counter].dropFirst(1)
let allAnswers = vocabulary[counter].shuffled()
if let userInput = readLine(), userInput.lowercased() == correctWord.lowercased() {

score = score + 1
        print("Yes, \(correctWord) is correct!")

    } else {
        print("That is incorrect")
        print("Answer was さようなら")
        incorrectCount = incorrectCount + 1
        count = count + 1
        wrongAnswer.append("Goodbye")
    }
counter = 0
while incorrectIndices.count > 0{
let index = incorrectIndices[0]
let correcrWord = vocabulary[index][1]
let otherWords = vocabulary[index].dropFirst(0)
let allAnswers = vocabulary[index].shuffled()
if let userInput = readLine(), userInput.lowercased() == correcrWord.lowercased() {
incorrectIndices.removeFirst()
print("Yes, \(correcrWord) is correct!")
} else {
    print("Sorry \(correcrWord) was the correct answer")
}
}
print("You have a score of \(score) out of \(vocabulary)")
if Double(score) >= Double(vocabulary.count / 2) {
    print("congratulations!!")
} else {
    print("Try again Next time.")
}













print("How do you say Red in Japanese?")
print(vocabulary[2])
if let userInput = readLine(), var userInput4 = Int(userInput), userInput4 >= minChoice, userInput4 <= maxChoice{
    if userInput4 == 1{
        print("That is correct")
        count = count + 1
    } else {
        print("That is incorrect")
        print("The answer was 赤")
        incorrectCount = incorrectCount + 1
        count = count + 1
        wrongAnswer.append("Red")
    }
}
print("How do you say White in Japanese?")
print(vocabulary[3])
if let userInput = readLine(), var userInput5 = Int(userInput), userInput5 >= minChoice, userInput5 <= maxChoice{
    if userInput5 == 1{
        print("That is correct")
        count = count + 1
    } else {
        print("That is incorrect")
        print("The answer was 白")
        incorrectCount = incorrectCount + 1
        count = count + 1
        wrongAnswer.append("White")
    }
}
print("How do you say Name in Japanese?")
print(vocabulary[4])
if let userInput = readLine(), var userInput6 = Int(userInput), userInput6 >= minChoice, userInput6 <= maxChoice{
    if userInput6 == 1{
        print("That is correct")
        count = count + 1
    } else {
        print("That is incorrect")
        print("The answer was 名前")
        incorrectCount = incorrectCount + 1
        count = count + 1
        wrongAnswer.append("Name")
    }
}
while wrongAnswer != [""] {
if wrongAnswer.contains(firstCheck) {
    print("How do you say Hello in japanese?")
print(vocabulary[0])
if let userInput = readLine(), var userInput2 = Int(userInput),userInput2 >= minChoice, userInput2 <= maxChoice {
    if userInput2 == 1{
        print("That is correct")
        wrongAnswer.removeAll{ $0 == firstCheck }
    } else {
        print("That is incorrect")
        print("The answer was こんにちは")
        wrongAnswer.removeAll{ $0 == firstCheck }
    }
}
}
}
if wrongAnswer.contains(secondCheck) {
    print("How do you say Goodbye in japanese?")
print(vocabulary[1])
if let userInput = readLine(), var userInput3 = Int(userInput),userInput3 >= minChoice, userInput3 <= maxChoice {
    if userInput3 == 1{
        print("That is correct")
        wrongAnswer.removeAll{ $0 == secondCheck }
    } else {
        print("That is incorrect")
        print("Answer was さようなら")
        wrongAnswer.removeAll{ $0 == secondCheck }
    }
}
}
if wrongAnswer.contains(thirdCheck) {
    print("How do you say Red in Japanese?")
print(vocabulary[2])
if let userInput = readLine(), var userInput4 = Int(userInput), userInput4 >= minChoice, userInput4 <= maxChoice{
    if userInput4 == 1{
        print("That is correct")
        wrongAnswer.removeAll{ $0 == thirdCheck }
    } else {
        print("That is incorrect")
        print("The answer was 赤")
        wrongAnswer.removeAll{ $0 == thirdCheck }
    }
}
}
if wrongAnswer.contains(fourthCheck){
    print("How do you say White in Japanese?")
print(vocabulary[3])
if let userInput = readLine(), var userInput5 = Int(userInput), userInput5 >= minChoice, userInput5 <= maxChoice{
    if userInput5 == 1{
        print("That is correct")
        wrongAnswer.removeAll{ $0 == fourthCheck }
    } else {
        print("That is incorrect")
        print("The answer was 白")
        wrongAnswer.removeAll{ $0 == fourthCheck }
    }
}
}
if wrongAnswer.contains(fifthCheck){
    print("How do you say Name in Japanese?")
print(vocabulary[4])
if let userInput = readLine(), var userInput6 = Int(userInput), userInput6 >= minChoice, userInput6 <= maxChoice{
    if userInput6 == 1{
        print("That is correct")
        wrongAnswer.removeAll{ $0 == fifthCheck }
    } else {
        print("That is incorrect")
        print("The answer was 名前")
        wrongAnswer.removeAll{ $0 == fifthCheck }
    }
}
}
}

    //show the question


    //present possible answer


    //check if the user guessed the correct answer.
    //If not, make a note of the question to ask again later.
    }


