
// A converter (binary number -> decimal number) to experiment with functional programming:

// (c) Hubert Schipkowski
// Version: 0.1
// 08.12.20

func greet() {
    print("Hi, this is a little binary to decimal converter.")
    run()
}

func run() {
    informUser()
    getData()
    prepareData()
    operate()
    askForMoreAction()
}

func informUser() {
    print("You can input the binary number (e.G. 1010.1101) here:")
}

func getData() -> String {
    
    // Raw data input simulation that exceeds the scope of the accepted characters: To come
    
    var acceptedCharacters: [Character] = ["0","1","."]
    var input: String = ""
    for _ in 0...7 {
        input.append(acceptedCharacters.randomElement() ?? "0")
        
        if input.last == "." {
            acceptedCharacters.remove(at: 2)
        }
    }
    
    if input.contains(".") {
        acceptedCharacters.append(".")
    }
    
    if input.first == "." {
        input.insert("0", at: input.startIndex)
    }
    
    print("Your input is: \(input)")
    
    return input
}

func prepareData() {
    proofData(data: getData())
    filterData()
}

func proofData(data: String) {}

func filterData() {}

func operate() {
    operateBeforeComma()
    operateBehindComma()
    giveData()
}

func operateBeforeComma() {}
func operateBehindComma() {}

func giveData() {}

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

func close() {}



// Execute:

greet()
