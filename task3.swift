
func findMax(numbers: [Int]) -> (Int) {
    var max = numbers[0]
    
    for i in 0 ..< numbers.count {
        if i % 2 == 0 && max < numbers[i]{
            max = numbers[i]
            
        }
        
    }
    return (max)
}


func findMaxInAray()->Void{
    let array = [2,3,1,-4,2]
    
    if array.isEmpty {
        print("array is empty")
        
    } else{
        let bounds = findMax(numbers: array)
        print ("max value is: ", bounds)
    }
    
}

//3
findMaxInAray()

