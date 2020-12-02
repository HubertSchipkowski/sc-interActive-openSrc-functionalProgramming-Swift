
// A binary number to decimal number converter to experiment with functional programming:

// (c) Hubert Schipkowski
// Version: 0.1
// 02.12.20

func run() {
    prepareData()
}

func prepareData() {
    informUser()
    getData()
    proofData(data: getData())
    filterData()
    separateParts()
}

func informUser() {
    print("Hi, this is a little binary to decimal converter.\nYou can input the binary number (e.G. 1010.1101) here:")
}

func getData() -> String {
    return ""
}

func proofData(data: String) {}

func filterData() {}

func separateParts() {
    operateBeforeComma()
    operateBehindComma()
}

func operateBeforeComma() {}
func operateBehindComma() {}
func giveData() {}



// Action

run()
