
func minInTuple() -> Void{
    var num = [2,3,7,1,-4,2]
    
    if num.isEmpty {
        print("array is empty")
    }else{
        num.sort()
        let Tuple: (Int, Int)
        Tuple.0 = num[0]
        Tuple.1 = num[1]
        print("tuple: ", Tuple)
    }
}

//4
minInTuple()
