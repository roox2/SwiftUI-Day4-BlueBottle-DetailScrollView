import UIKit

var str = "Hello, playground"

// MARK: Type 변수종류
// 123: Int [정수]
// "123": String [문자열]
// 123.0: Double / Float [소수점을 포함한 숫자] *Double이 상대적으로 2배 많이 숫자를 저장할 수 있음

// MARK: 변수 선언(Property) [상수&변수]
// let [상수]
let name1: Int = 123
//Int값이 있을 경우 "123" *값이 곧 객체임
let name2: Int = Int()
//Int값이 없을 경우 Initializer[Init]를 사용 --> () --> 기본적인 객체 생성
var name3: Int = 123
var name4: Double = 123
print(name4 + 0.1)
// TypeCasting사용 --> 값은 하나지만, 만약 Int, Double 둘 다 필요할 경우 --> ex) 내가 원하는 타입(바꾸고자하는 property)
print(Double(name3) + 0.1)
// 값을 문자로 찍어낼 때 많이 사용하는 편

// MARK: 값 출력하기
// "정답은 123 입니다.
print(name3)
print("정답은 " + String(name3) + " 입니다.")
// TypeCasting과 Type을 활용
print("정답은 \(name3) 입니다.")
print("버전 \(name3)")
// \() --> String이 아니거나 " "이 아닌 경우에 사용한다 *""의 경우, 문자열이 시작된다 끝난다라고 인식하기 때문

// MARK: 함수(Function)
// func name(parameter) -> 변환값타입 { ... }
// 함수의 이름은 동사로 작성 vs 변수는 명사로 작성
// parameter 작성시 --> (name: type)으로 작성
// 외부이름 내부이름: ParameterType
func sum(first x: Int, seconed y: Int) -> Int {
    return x + y
// output으로 배출하기 위해 return 사용
}

sum(first: 1, seconed: 3)
// 내부이름과 외부이름을 작성자 맘대로 제어할 수 있음

// 예시 연습
// "재성이 집에서 학교로 이동했습니다."
// 재성 moves from home to school
// func move(from: , to: )
// func move(from point1: String, to point2: String)
// *동사: 함수 이름, 전치사: input 이름
func move(from point1: String, to point2: String) {
    print("재성이 \(point1)에서 \(point2)로 이동했습니다.")
}

move(from: "집", to: "학교")

// MARK: Initializer
// *""는 문자열을 의미함
let name: String = "이재성"
let code: Int = 11111

// 학생에 대한 정보를 알려주기 위해 class or struct을 사용 --> 학생이라는 새로운 타입 생성

class Student1 {
    let name: String = "이재성"
    let code: Int = 11111
}

struct Student2 {
    let name: String = "이재훈"
    let code: Int = 11112
}

class Student {
    let name: String
    let code: Int
    
    init(name: String, code: Int) { // 객체를 "어떻게" 만들 것인지에 대한 함수
        self.name = name // self: 감싸고 있는 제일 큰 카테고리
        self.code = code
        // student의 name(큰 카테고리) -> self.name -> let name을 의미
        // *struct의 경우, init이 별도로 필요하지 않음 *SwiftUI에서는 struct를 권장
    }
}

let jaesung = Student(name: "이재성", code: 11111)
print(jaesung.name)
print(jaesung.code)
