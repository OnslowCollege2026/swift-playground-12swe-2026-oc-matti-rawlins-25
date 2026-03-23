// The Swift Programming Language
// https://docs.swift.org/swift-book

@main
struct SwiftPlayground {
    static func main() {
    // Constants and variables.

//randomizes the options for the answer
var randomizeAnswers = Int.random(in:1...4)

    /// The vocabulary to test the user on.
    /// Each Inner array contains the English word, the correct answer in the target language, and then three incorrect answers
    let vocabulary = [
        ["Hello",       "1.こんにちは", "2.ヒア", "3.さようなら", "4.いい"],
        ["Goodbye",     "1.さようなら", "2.じゃあね", "3.こんにちは", "4.市場"],
        ["Red",         "1.赤", "2.さようなら", "3.ヒア", "4.さようなら" ],
        ["White",         "1.白", "2.赤", "3.さようなら", "4.市場"],
        ["Name", "1.名前", "2.こんにちは", "3.じゃあね", "4.こんにちは"]
        ]

///the indices of the questions that the user got wrong.
var incorrectIndices: [Int] = []

///The number of questions the user got wrong first time around.
var incorrectCount = 0

//The number of questions that have been asked
var count = 0


    // loop until all of the vocabulary questions have been asked.
while count < vocabulary.count{

}

    //show the question


    //present possible answer


    //check if the user guessed the correct answer.
    //If not, make a note of the question to ask again later.
    }
}
