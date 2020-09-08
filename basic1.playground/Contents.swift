import Swift

let age:  Int = 10
"안녕하세요! 저는 \(age)살입니다."
"안녕하세요! 저는\(age + 5)살입니다."
print("안녕하세요! 저는\(age + 5)살입니다.")
class Person{
    var name : String = "jiyoon"
    var age : Int = 23
}
let jiyoon : Person = Person()
print(jiyoon) //__lldb_expr_9.Person
dump(jiyoon) //name: "jiyoon"age: 23

var someString: String = "Hello"
someString = someString+"World"
print(someString)
dump(someString)

var integers: Array<Int> = Array<Int>()
integers.append(10)
print(integers)

var doubles: [Double] = []
print(doubles)
//딕셔너리
var dict: Dictionary<String, Any> = [String:Any]()
dict["나이"] = 23
dict["이름"] = "지윤"
dict.removeValue(forKey: "나이")
dict
//set
var integers_set: Set<Int> = Set<Int>()
integers_set.insert(1)
integers_set.insert(1)
integers_set
//set 응용
let setA : Set<Int> = [1, 2, 3, 4, 5]
let setB : Set<Int> = [3, 4, 5, 6, 7]
let union: Set<Int> = setA.union(setB) //합집합
let union_sorted: [Int] = union.sorted()//정렬
setA.intersection(setB)//교집합
setA.subtracting(setB)//차집합

/*함수*/
func sum(a:Int, b:Int) -> Int { //반환값 없을땐 Void
    return a+b
}
func printName(a: String){ //반환값이 없을땐 아예 -> 와 반환타입을 적지 않아도 됨
    print(a)
}
func hello(){print("hello")} //처럼 매개변수, 반환값이 모두 없을 수도 있음

sum(a: 1, b: 3)
printName(a: "jiyoon")
hello()

/*함수고급*/
func greeting(a:String, me: String = "jiyoon"){
    print("hello \(a), I am \(me)")
}
greeting(a: "jiwon")
greeting(a: "jiwon", me: "eric")

//전달인자 레이블은 함수를 호출할 때 매개변수의 역할을 좀 더 명확하게 표현하거나 함수 사용자의 입장에서 표현하고 싶을 때 사용한다.
func greetings(to a: String, from me: String="jiyoon"){
    print("Hello \(a), I'm \(me)") //함수 내부에서 전달인자를 사용할 때는 매개변수 이름을 사용.
}
greetings(to: "jiwon", from: "지윤") //함수를 호출할 때는 전달인자 레이블을 사용

func helloToFriends(me: String, friends: String...) -> String{
    return "Hello \(friends)! I'm \(me)!"
}
print(helloToFriends(me: "지윤", friends: "지원", "eric"))

var someFunction: (String, String) -> Void = greetings(to:from:) //함수를 다른 변수 안에 넣어서 사용 가능(대신, 타입이 같아야 함)
someFunction("eric", "jiyoon")

func runAnother(function: (String, String) -> Void){    //함수를 매개변수로 가지는 함수를 선언할 수도 있음
    function("jenny", "mike")
}
runAnother(function: greetings(to:from:))
runAnother(function: someFunction)
