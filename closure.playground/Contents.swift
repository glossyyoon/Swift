import UIKit

var str = "Hello, playground"
/*클로저*/
//함수 사용
func sumFunction(a: Int, b: Int) -> Int{
    return a+b
}
var someResult: Int = sumFunction(a: 1, b: 2)
print(someResult)
//클로저 사용
var sum: (Int,Int) -> Int = { (a: Int, b: Int) in
    return a+b
}
someResult = sum(1,2)
print(someResult)



func calculate(a: Int, b: Int, method: (Int, Int) -> Int) -> Int {
    return method(a, b)
}

var calculated = calculate(a: 50, b:10, method: { (left: Int, right: Int) -> Int in
            return left * right})
//print(calculated) //500


//따로 클로저를 상수/변수에 넣어 전달하지 않고,
//함수를 호출할 때 클로저를 작성하여 전달할 수도 있습니다.

calculated = calculate(a: 50, b: 10, method: { (left: Int, right: Int) -> Int in
    return left * right
})

print(calculated) // 500

/*클로저 고급*/
//후행클로저, 괄호를 닫은다음 메소드 이름을 안쓰면 다음에 나오는 중괄호가 전달될 인자라는 것을 암시.
var result: Int
result = calculate(a: 10, b: 10) { (left:Int, right:Int) -> Int in
    return left + right
}
//반환타입생략
result = calculate(a: 10, b: 10, method: { (left: Int, right: Int) in
    return left + right
})
//후행클로저
//result = calculate(a: 10, b: 10) { (left: Int, right: Int) int
//    return left + right
//})
//
