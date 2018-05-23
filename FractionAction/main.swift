import Foundation

// INPUT
var numerator = 0
var denominator = 0

// PROCESS
while 1 == 1 {
    print("numerator")
    
    // Waiting for input
    guard let integerNumerator = readLine() else {
        continue
        // Check for nil
    }
    //test 2:
    guard let givenInput = Int(integerNumerator)else{
        continue
    }
    //test 3:
    if givenInput < 0 {
        continue
    }
    numerator = givenInput
    break
}

while 1 == 1 {
    print("denominator")
    
    //wait for the input
    guard let givenInteger = readLine() else{
        
        //check for nil
        continue
    }
    //test 2:
    guard let integerDenominator = Int(givenInteger) else{
       
        //check for integer
        continue
    }
    //test 3:
    if integerDenominator < 1 {
        continue
    }
    denominator = integerDenominator
    break
}

// quotient and reminder
var quote = numerator / denominator

var remain = numerator % denominator

// Whole number
if remain == 0 {
    
    print("Result:", quote)
}
    
    //if the reminder is the factor of the denomnator
else if denominator % remain == 0 {
    
    let reducedNumerator = 1
    
    let reduceDenominator =  denominator / remain
    
    //if the quotient is 0, don't print quotient, only print reducedNumerator/reducedDonomiator
    if quote == 0 {
       
        print("\(reducedNumerator)/\(reduceDenominator)")
        
        //if the quotient is bigger than 0, print it.
    } else {
        
        print("\(quote) \(reducedNumerator)/\(reduceDenominator)")
        }
   
    // the reminder is not the factor of the denomnator
    } else  {
    // we must reduce.
    
    
    //loop backwards from the halfway point of the numerator
  
    
        var GCF = 1
    
    //set as starting GCF // Will loop from starting number and goes through each number
   
    
    for positiveFactor in stride(from: remain / 2, through: 2, by: -1){
        print(positiveFactor)
        //when the counter varibale "i" evenly divides into both reminder and the original denominator...we have the GCF
        

        if remain % positiveFactor == 0 && denominator % positiveFactor == 0 {

            
            
            GCF = positiveFactor
            break
        }
    }
    //Get the finial fraction
    
    let finialReminder = remain / GCF
    
    let finialDenominator = denominator / GCF
    
    //if the quotient equals to 0, don't print
    if quote == 0 {
        print("\(finialReminder) /\(finialDenominator)")
        //if the quotient is not, print it
    } else {
        print("\(quote) \(finialReminder)/\(finialDenominator)")
        
    }
}
