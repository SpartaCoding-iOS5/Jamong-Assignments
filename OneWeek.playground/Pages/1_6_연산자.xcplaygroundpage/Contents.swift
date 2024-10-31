// Playground file for 1-6 연산자 Assignment
// 작성일: 2024.10.31 (수요일)
// 이 파일은 1-6 연산자 과제를 작성하고 연습을 포함합니다.
//
// 작성자: Jamong
// 과제 설명:
// - 해당 파일에서는 연산자를 이해하고 사용하는 방법을 연습합니다.

// 연산자
// 대입 연산자, 산술 연산자, 비교 연산자, 논리 연산자, 범위연산자

// 대입 연산자
// = 연산자는 값을 변수나 상수에 대입할 때 사용
let age: Int = 20
var name = "Jamong"

// 산술 연산자
// + 두 값을 더함.
// += 기존 값에 더한 후 할당.
var result1 = 10 + 20    // 30
result1 += 30 // 60

// 나누기
// / 두 값을 나눔.
var result2 = 30/7   // 4

// 곱하기
// * 두 값을 곱함.
// *= 기존 값에서 곱한 뒤 할당.
var result3 = 10 * 20    //2000
result3 *= 30    // 60000

// 나머지
// % 두 값을 나눈 후의 나머지를 반환.
var result4 = 10 % 4    // 1


// 비교연산자 ㅇ
// 두 값을 비교하여 참(true)나 거짓(false)를 반환.
// == : 값이 같은지 확인
// != : 두 값이 다른지 확인
// > : 왼쪽의 값이 오른쪽 값보다 더 큰지 확인
// < : 왼쪽의 값이 오른쪽 값보다 더 작은지 확인
// >= : 왼쪽의 값이 크거나 같은지 확인
// <= : 왼쪽의 값이 작거나 같은지 확인

// 논리 연산자
// Not 연산자
    // ! 키워드를 사용한다.
    // !true 처럼 느낌표가 앞에 온다.
    // Bool 값을 반대로 반환한다.

var allowedEntry: Bool = false // false
allowedEntry = !allowedEntry
print(allowedEntry) // true


// And 연산자
// 두개의 값을 비교하여 두개 값이 모두 true 일때 true를 반환.
// && 키워드를 사용함.
true && true  //true
true && false  //false
false && false // false


// OR 연산자
// 두개의 값을 비교하여 한개만 true일 때 true를 반환하는 연산자
// 한개가 true이고 한개가 false 일 때 true를 반환.
// || 키워드를 사용함.
true || true    //true
true || false   //true
false || false  //false

// 범위 연산자
// 닫힌 범위연산자(Closed Range Operator)
// a...b 와 같이 ...를 사용함.
// 시작값과 마지막값을 모두 포함하는 범위를 정의할 때 사용
// a...b a이상 b이하의 범위를 나타냄
(0...3) // 0, 1, 2, 3 의 범위로 0이상 3이하의 범위를 표시
(10...12) // 10, 11, 12 의 범위로 10이상 12이하의 범위를 표시

// 반-올림 범위 연산자(Half-Open Range Operator)
// a..<b 와 같이 ..<를 사용한다.
// 시작값은 포함되어 있고 마지막 값은 포함되어 있지 않은 범위를 정의함.
// a..<b a이상 b미만의 범위를 나타냄
(0..<3) // 0,1,2의 범위

// 단-방향 범위(One-Sided Ranges)
// a... ...b 와 같이 한쪽에만 값을 넣어서 사용함.
// 오로지 한쪽으로만 범위를 갖는다.

(10...) // 10, 11 ,12, 13 ...


// 삼항 연산자
// 조건 ? 참일 때 반환값 : 거짓일 때 반환값 형태를 가진 연산자.
let age3: Int = 20
let isAdult: Bool = age3 > 20 ? true : false


// 실습하기
var sum = 10 + 5
var product = 3 * 4
sum += product
print(sum)


let a = 10
let b = 20
print(a > b)
print(a <= b)


let hasLicense = true
let isOver18 = false
print(hasLicense && isOver18)
print(hasLicense || isOver18)


for number in 1...5 {
    print(number)
}

for number in 1..<5 {
    print(number)
}
