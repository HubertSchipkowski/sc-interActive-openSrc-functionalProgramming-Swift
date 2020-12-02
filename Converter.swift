
// A converter (binary number -> decimal number) to experiment with functional programming:

// (c) Hubert Schipkowski
// Version: 0.1
// 02.12.20

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

func prepareData() {
    proofData(data: getData())
    filterData()
}

func getData() -> String {
    return ""
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
