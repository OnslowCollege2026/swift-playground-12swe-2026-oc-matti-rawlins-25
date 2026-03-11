// The Swift Programming Language
// https://docs.swift.org/swift-book



@main
struct SwiftPlayground {
    static func main() {
        let temperature = [
        [1,2,3,4],
        [5,6,7,8],
        [9,10,11,12],
        ]
        print (temperature[0])
        print(temperature[1][2])
        print(temperature[2][0]) 
        print((temperature[2][0] + temperature[2][1] + temperature[2][2] + temperature[2][3]) / 4)
        print("-------------")
        let table = [
    [2, 4, 6],
    [8, 10, 12],
    [14, 16, 18]
]
var total = 0
for row in table {
    for value in row {
        print(value)
        total = total + (value)
    }
}
    print("----------")
        print (total)
        print ("----------------")
let newTable = [
    [3, 5, 7, 9],
    [2, 4],
    [8, 6, 1],
    [10]
]
// func columnTotal(in newTable: [[Int]], column: Int) -> Int {
//     guard column >= 0 && column < newTable.count else { return 0 }
//     return newTable[column].reduce(0, +)
//     columnTotal(in: [[0]], column: 0)
//     }

func columnTotal(in table: [[Int]], column: Int) {
var counter = 0

for row in newTable { 
    if row.count > column {
        counter = counter + row[column]
    }
    print(counter)
}
}

}

}
}