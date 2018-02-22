import Foundation

//Practising using recursion

func getNthFibonacciNumber(n: Int) -> Int{
    if n == 1 || n == 0 {
        return n
    } else {
        return getNthFibonacciNumber(n: n-1) + getNthFibonacciNumber(n: n-2)
    }
}

//let fibo = getNthFibonacciNumber(n: 25)
//print(fibo)

func fibWithIteration(n : Int) -> Int {
    
    if n == 0 || n == 1 {
        return n
    } else {
        var a: [Int] = [1,1]
        for i in 2..<n {
            a.append(a[i-1] + a[i-2])
        }
        return a.last!
    }
}

let fibo2 = fibWithIteration(n: 25)
print(fibo2)


//Factorials

//Using recursion
func getFactorial(n: Int) -> UInt64{
    if n <= 1 {
        return UInt64(n)
    } else {
        let fact = UInt64(n) * (getFactorial(n: n-1))
        return fact
    }
}
print(getFactorial(n: 20))

//Using iteration
func getFactWithIteration(n: Int) -> Int {
    if n <= 1 {
        return n
    } else {
        var sum = 1
        for i in 2...n {
            sum *= i
        }
        return sum
    }
}

print(getFactWithIteration(n: 20))

let ex = 20*19*18*17*16*15*14*13*12*11*10*9*8*7*6*5*4*3*2*1
print(ex)

var str = "Hello"
var str2 = ""
var chars = Array(str)
chars.remove(at: 0)
for char in chars {
    str2.append(char)
}
print(str2)

// Pig Latin generator

func moveFirstLetterToEnd(_ word : String) -> String {
    var wordAsArray = Array(word)
    var wordToReturn = ""
    let letterToMove = wordAsArray[0]
    wordAsArray.remove(at: 0)
    for char in wordAsArray {
        wordToReturn.append(char)
    }
    wordToReturn.append(letterToMove)
    return wordToReturn
}

func pigl(word: String) -> String {
    let vowels: [String] = ["a", "e", "i", "o", "u"]
    var wordAsArray = Array(word)
    var wordToReturn = ""
    if vowels.contains(String(wordAsArray[0])) {
        wordToReturn = "\(word)ay"
        return wordToReturn
    } else {
        let newWord = moveFirstLetterToEnd(word)
        return (pigl(word: newWord))
    }
}

pigl(word: "hippopotamus")

//Using iteration
func piglit(word: String) -> String {
    let vowels: [String] = ["a", "e", "i", "o", "u"]
    var wordToReturn = ""
    var wordAsArray = Array(word)
    repeat {
        wordAsArray.append(wordAsArray[0])
        wordAsArray.remove(at: 0)
    } while !vowels.contains(String(wordAsArray[0]))
    for char in wordAsArray {
        wordToReturn.append(char)
    }
    wordToReturn += "ay"
    return wordToReturn
}

piglit(word: "table")



