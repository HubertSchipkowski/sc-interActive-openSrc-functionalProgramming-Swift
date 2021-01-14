
// A converter (binary number -> decimal number) to experiment with functional programming:

// (c) Hubert Schipkowski
// Version: 0.1
// 06.01.21

// Next Step: Documentation
// Refactoring, especially regarding unnecessary or too complex functions, first visually:


import Foundation

func greet() {
    print("Hi, this is a little binary to decimal converter.")
    run()
}

func run() {
    informUser()
   
    giveData(result: operate(convertedData: convertDataToDecimal(seperatedData: prepareData())))
    askForMoreAction()
}

func informUser() {
    print("\nYou can input the binary number (e.G. 1010.1101) here:")
}

func getData() -> String {
    
    // Raw data input simulation that exceeds the scope of the accepted characters: To come: RegEx?
    
    let acceptedCharacters: [Character] = ["0","1"]
    var input: String = ""
    for _ in 0...3 {
        input.append(acceptedCharacters.randomElement() ?? "0")
        
    }
    input.append(".")
    
    for _ in 0...3 {
        input.append(acceptedCharacters.randomElement() ?? "0")
        
    }
    
    return input
}

func confirmData(input: String) -> String {
    print("Your input is: \(input)")
    return input
}

func prepareData() -> (String, String) {
    let seperatedData: (String, String) = separateData(proofedData: proofData(data: confirmData(input: getData())))
    
     // print(seperatedData)
    return seperatedData
}

func proofData(data: String) -> String {
    return data
}

func separateData(proofedData: String) -> (String, String) {
   // print("separateData-Input: \(proofedData)")
    var seperatedData: (String, String)
    var proofedDataCharacters: [Character] = []

    for character in proofedData {
        proofedDataCharacters.append(character)
    }
  //   print(proofedDataCharacters)
    
    let commaPosition: Int = proofedDataCharacters.firstIndex(of: ".") ?? 0
    // print(commaPosition)
    
    let beforeComma = getBeforeCommaString(commaPosition: commaPosition, proofedDataCharacters: proofedDataCharacters)
    
    
    let behindComma = getBehindCommaString(commaPosition: commaPosition, proofedDataCharacters: proofedDataCharacters)
    
    seperatedData = (beforeComma, behindComma)
    
   //  print(seperatedData)
    return seperatedData
}


func getBeforeCommaString(commaPosition: Int, proofedDataCharacters: [Character]) -> String {
    
    var beforeCommaString: String = ""
    
    for index in 0...commaPosition-1 {
        beforeCommaString.append(proofedDataCharacters[index])
    }
    // print(beforeCommaString)
    return beforeCommaString
}


func getBehindCommaString(commaPosition: Int, proofedDataCharacters: [Character]) -> String {
    var behindCommaString: String = ""
    
   // print(proofedDataCharacters)
    for index in commaPosition+1...proofedDataCharacters.endIndex-1 {
        behindCommaString.append(proofedDataCharacters[index])
    }
    
    // print(behindCommaString)
    return behindCommaString
}


func convertDataToDecimal(seperatedData: (beforeComma: String, behindComma: String)) -> (Decimal, Decimal) {
   // print(seperatedData)
    var beforeCommaCharacters: [Character] = []
    var behindCommaCharacters: [Character] = []
    
    for character in seperatedData.beforeComma {
        beforeCommaCharacters.append(character)
    }
    
    for character in seperatedData.behindComma {
        behindCommaCharacters.append(character)
    }
    
    let intFour = Int(String(beforeCommaCharacters[0])) ?? 0
    let resultFour = Decimal(intFour) * pow(2, 3)
    
    let intThree = Int(String(beforeCommaCharacters[1])) ?? 0
    let resultThree = Decimal(intThree) * pow(2, 2)
    
    let intTwo = Int(String(beforeCommaCharacters[2])) ?? 0
    let resultTwo = Decimal(intTwo) * pow(2, 1)
    
    let intOne = Int(String(beforeCommaCharacters[3])) ?? 0
    let resultOne = Decimal(intOne) * pow(2, 0)
    
    
    let intMinusOne = Int(String(behindCommaCharacters[0])) ?? 0
    let resultMinusOne = Decimal(intMinusOne) * (1/pow(2, 1))
    
    
    let intMinusTwo = Int(String(behindCommaCharacters[1])) ?? 0
    let resultMinusTwo = Decimal(intMinusTwo) * (1/pow(2, 2))
    
    let intMinusThree = Int(String(behindCommaCharacters[2])) ?? 0
    let resultMinusThree = Decimal(intMinusThree) * (1/pow(2, 3))
    
    
    let intMinusFour = Int(String(behindCommaCharacters[3])) ?? 0
    let resultMinusFour = Decimal(intMinusFour) * (1/pow(2, 4))
    
    
    let intBeforeComma = resultFour + resultThree + resultTwo + resultOne
    
    let intBehindComma = resultMinusOne + resultMinusTwo + resultMinusThree + resultMinusFour
    
    return (intBeforeComma, intBehindComma)
}

func operate(convertedData: (intBeforeComma: Decimal, intBehindComma: Decimal)) -> (Decimal, Decimal) {
    
    let beforeComma: Decimal = operateBeforeComma(intBeforeComma: convertedData.intBeforeComma)
    let behindComma: Decimal = operateBehindComma(intBehindComma: convertedData.intBehindComma)
    
    return (beforeComma, behindComma)
}

func operateBeforeComma(intBeforeComma: Decimal) -> Decimal {
    let intBeforeComma = intBeforeComma
    
    return intBeforeComma
}

func operateBehindComma(intBehindComma: Decimal) -> Decimal {
    let intBehindComma = intBehindComma
    
    return intBehindComma
}

func giveData(result: (Decimal, Decimal)) {
    let beforeCommaDecimal = result.0
    let behindCommaDecimal = result.1
    
    print("The decimal value of your binary input is: \(beforeCommaDecimal + behindCommaDecimal)")
}

func askForMoreAction() {
    print("Do you want to convert another binary?")
    let possibleAnswers = ["y","n"]
    let answer = possibleAnswers.randomElement() ?? "y"
    if answer == "y" {
        run()
    } else {
        close()
    }
}

func close() {
    print("Thanks and Good Bye!")
}



// Execute:

greet()

