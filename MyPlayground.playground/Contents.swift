struct Town{
    let name = "jiyoon"
    var citizens = ["jiyoon", "jiwon"]
    var resources = ["Grain": 100, "Ore":42, "Wool":75]
    
    func fortify(){
        print("Defences increased!")
    }
}
var myTown = Town()

print(myTown.citizens)
myTown.citizens.append("mom")
print(myTown.citizens.count)
