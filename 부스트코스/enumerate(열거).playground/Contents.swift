/*열거형*/
enum Weekday{
    case mon
    case tue
    case wed
    case thu, fri, sat, sun
}
var day: Weekday = Weekday.mon  //처음 선언할때는 이렇게 해주자.
day = .tue  //축약형
switch day{ //모든 case를 다 작성하거나 default를 작성해줘야함.
case .mon, .tue, .wed, .thu:
    print("평일입니다.")
case Weekday.fri:
    print("불금입니다.")
case .sat, .sun:
    print("주말입니다.")
}
/*원시값 raw value*/
/*열거형을 정수형으로 만들고 싶을 때*/
enum Fruit: Int{
    case apple = 0
    case grape = 1
    case peach  //숫자를 넣어주지 않으면 자동으로 1씩 증가해서 들어감. peach는 2
}
print("Fruit.peach.rawValue == \(Fruit.peach.rawValue)")
//Fruit.peach.rawValue==2
//정수 타입 뿐 만 아니라 hashable 프로토콜을 따르는 모든 타입이 원시값의 타입으로 지정될 수 있다.
enum School: String{
    case elementry = "초등"
    case middle = "중등"
    case high = "고등"
    case university
}
print("School.middle.rawValue == \(School.middle.rawValue)")
print("School.university.rawValue == \(School.university.rawValue)") //int값과는 다르게 string을 지정해 주지 않으면 case이름을 가져온다.

//let apple: Fruit = Fruit(rawValue: 0) case가 없으면 생성이 되지 않을 수 있기 때문에 nil값일 수도 있음 따라서 타입은 optional이여야 함
let apple: Fruit? = Fruit(rawValue: 0)
if let orange: Fruit = Fruit(rawValue: 5){
    print("rawValue 5에 해당하는 case는 \(orange)입니다.")
}else{
    print("rawVale 5에 해당하는 케이스가 없습니다.")
}
/*swift의 열거형에는 메서드를 추가할 수도 있다.*/
enum Month{
    case dec, jan, feb
    case mar, apr, may
    case jun, jul, aug
    case sep, oct, nov
    
    func printMessage(){
        switch self{
        case .mar, .apr, .may:
            print("봄")
        case .jun, .jul, .aug:
            print("여름")
        case .sep, .oct, .nov:
            print("가을")
        case .dec, .jan, .feb:
            print("겨울")
        }
    }
}
Month.mar.printMessage()

/*값타입, 참조타입*/

/*클래스 vs 구조체/열거형 비교*/
struct ValueType{
    var property = 1
}
class ReferenceType{
    var property = 1
}
let firstStructInstance = ValueType()
var secondStructInstance = firstStructInstance
secondStructInstance.property = 2
print("first StructInstance = \(firstStructInstance)")
print("second StructInstance = \(secondStructInstance)")

let firstClassReference = ReferenceType()
var secondClassReference = firstClassReference
secondClassReference.property = 2
print("firstClassInstance = \(firstClassReference.property)")
print("secondClassInstance = \(secondClassReference.property)")
