import Foundation

// Functions call otther functions
func myFirstFunction(){
    print("First function called")
    mySecondFunction()
}

func mySecondFunction(){
    print("Second function called")
}

myFirstFunction()

//------------------------------------

//Return data out of a function
func getUserName() -> String {
    let username = "Soren"
    return username
}

getUserName()
print(getUserName())

//-------------------------------------

//Functions parameters

func showFirstScreen(){
    var userDidCompleteOnboarding = false
    var userProfileCreated = true
    
    let status = checkUserStatus(didCompleteOnboarding: userDidCompleteOnboarding, profileIsCreated: userProfileCreated)
    
    if status == true {
        print("Show Home Screen")
    } else {
        print("Show Onboarding Screen")
    }
}

func checkUserStatus(didCompleteOnboarding: Bool, profileIsCreated: Bool) -> Bool{
    if didCompleteOnboarding && profileIsCreated {
        return true
    } else {
        return false
    }
}

showFirstScreen()

//-------------------------------------

// Calculated variables as a function
let number1 = 2
let number2 = 3

var calculatedNumber: Int {
    return number1 + number2
}

print(calculatedNumber)

