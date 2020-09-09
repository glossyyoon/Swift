import Swift

/*Optional*/
/*값이 있을 수 도 있고 없을 수 도 있음*/
let optionalConstant: Int? = nil    //optional은 nil의 가능성을 표현하는 것.
//let constant: Int = nil       //optional을 쓰지 않고는 nil을 사용할 수 없음.
//optional은 nil의 가능성을 명시적으로 표현한다.

//Optional의 표현방법 두 가지
let optionalValue1: Optional<Int> = nil
let optionalValue2: Int? = nil //일반 변수타입과 다르기 때문에 기존 연산을 수행할 수 없음
//암시적 optional 표현 방법은 ? 대신 !를 사용한다.
let optionalValue3: Int! = nil //런타임 오류가 발생할 수 있다.

var optionalA: Int? = nil
var optionalB: Int! = nil
optionalB = optionalA
//optionalA = optionalB + 1     error
optionalA = 100
//print(optionalB * 3)          error
