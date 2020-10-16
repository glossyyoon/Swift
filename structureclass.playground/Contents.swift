/*구조체*/
//swift에서는 대부분의 구조가 구조체로 되어있을 정도로 중요한 부분을 담당하고 있다.
struct Sample{
    var mutableProperty: Int = 100 //가변(인스턴스property)
    let immutableProperty: Int = 100 //불변(인스턴스property)
    static var typeProperty: Int = 100 //sample에서만 사용할 수 있는 타입property
    //인스턴스 메소드
    func instanceMethod(){
        print("instanceMethod")
    }
    //타입 메소드
    static func typeMethod(){
        print("typeMethod")
    }
}
/*instance에서 사용할 수 있는 method*/
var mutable: Sample = Sample() //구조체 내의 불변property는 바뀌지 않음
mutable.mutableProperty = 200
//mutable.immutableProperty = 200
let mutable1: Sample = Sample() //let을 사용하면 구조체에서 가변property를 바꿔주려고 해도 바뀌지 않음
//mutable1.mutableProperty = 200


/*Sample타입 자체에서 사용할 수 있는 method*/
Sample.typeProperty = 300

struct Student{
    var name: String = "unknown"
    var `class`: String = "Swift"
    
    static func selfIntroduce(){ //타입메서드
        print("학생타입입니다.")
    }
    func selfIntroduce(){
        print("저는 \(self.class)반 \(name)입니다.") //인스턴스메서드
    }
}
Student.selfIntroduce()
var jiyoon: Student = Student()
jiyoon.name = "jiyoon"
jiyoon.class = "swift"
jiyoon.selfIntroduce()

/*클래스*/
class Sample_class{
    var mutableProperty: Int = 10;
    let immutableProperty: Int = 10;
    static var typeProperty: Int = 10;
    
    func instanceMethod(){
        print("instance method")
    }
    /*타입 메소드에는 두 가지가 있다*/
    /*1. 상속을 받았을 때 재정의가 불가능한 static 메서드*/
    static func typeMethod(){
        print("type method - static")
    }
    /*2. 재정의 가능 class 메서드*/
    class func classMethod(){
        print("type method - class")
    }
    
}
var mutableReference: Sample_class = Sample_class()
mutableReference.mutableProperty = 200

let immutableReference: Sample_class = Sample_class()
immutableReference.mutableProperty = 200

Sample_class.typeProperty = 200
Sample_class.typeMethod()

class Student_class {
    // 가변 프로퍼티
    var name: String = "unknown"

    // 키워드도 `로 묶어주면 이름으로 사용할 수 있습니다
    var `class`: String = "Swift"
    
    // 타입 메서드
    class func selfIntroduce() {
        print("학생타입입니다")
    }
    
    // 인스턴스 메서드
    // self는 인스턴스 자신을 지칭하며, 몇몇 경우를 제외하고 사용은 선택사항입니다
    func selfIntroduce() {
        print("저는 \(self.class)반 \(name)입니다")
    }
}

// 타입 메서드 사용
Student.selfIntroduce() // 학생타입입니다

// 인스턴스 생성
var yagom: Student_class = Student_class()
yagom.name = "yagom"
yagom.class = "스위프트"
yagom.selfIntroduce()   // 저는 스위프트반 yagom입니다

// 인스턴스 생성
/*구조체와 다르게 let으로 선언 했음에도 불구하고 가변적이다*/
let jina: Student_class = Student_class()
jina.name = "jina"
jina.selfIntroduce() // 저는 Swift반 jina입니다
