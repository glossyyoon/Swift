import Swift

let someInteger = 100

//if-else if는 기존에 알던 문법이랑 같음
if someInteger<100{
    print("100 미만")
}else if someInteger>100{
    print("100초과")
}else{
    print("100")
}

//switch구문 - 범위연산자 등장
switch someInteger{
case 0:     //모든 case구문에는 명시하지 않아도 break가 걸려있음
    print("zero")
case 1..<100:   //1이상 100미만
    print("1~99")
case 100:
    print("100")
case 101...Int.max:     //101이상 Int.max이하
    print("over 100")
default:    //default는 꼭 작성해주는게 좋음
    print("unknown")
}
/*반복문*/
var Integers = [1, 2, 3]
let people = ["jiyoon":23, "jiwon":20, "miyeon":23]
for integer in Integers{
    print(integer)
}
for (name, age) in people{  //dictionary의 item은 key와 value로 구성된 튜플이다.
    print("\(name): \(age)")
}
while Integers.count > 1{
    Integers.removeLast()
}
repeat{     //do-while과 비슷.
    Integers.removeLast()
}while Integers.count>0

