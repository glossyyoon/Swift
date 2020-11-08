func loveCalculator(){
    let loveScore = Int.random(in: 0...100)
    if loveScore > 80{
        print("You love each other")
    }
    else if loveScore > 40{
        print("You go each other")
    }
    else{
        print("You'll be forever alone")
    }
    switch loveScore {
    case 80...:
        print("You love each other")
    case 40<.<80:
        print("You go each other")
    default:
        print("")
    }
}
