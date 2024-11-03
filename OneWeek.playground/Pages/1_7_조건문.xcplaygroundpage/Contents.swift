// Playground file for 1-7 조건문 Assignment
// 작성일: 2024.10.31 (목요일)
// 이 파일은 1-7 조건문 과제를 작성하고 연습을 포함합니다.
//
// 작성자: Jamong
// 과제 설명:
// - 해당 파일에서는 조건문를 이해하고 사용하는 방법을 연습합니다.

// 프로그램의 흐름을 제어하는 문법으로, 특정 조건이 true인지 false인지에 따라 코드블록을 실행하거나 건너 뛸 수 있다.
// if 키워드를 사용함
// 조건이 true이면 코드 블록을 실행하고, false이면 else의 코드블록이 실행됨.
// if와 else 중간에 조건을 추가하려면 else if로 조건을 추가할 수 있다.

if 10 > 20 {
    print("10은 20보다 크다")
} else {
    print("10은 20보다 작다.")
}

var age = 15

if age >= 20 {
    print("20살이 넘은 성인입니다")
} else if age >= 17 {
    print("20살 미만이고 17살 이상인 고등학생입니다.")
} else if age >= 14 {
    print("17살 미만이고 14살 이상인 중학생입니다.")
} else {
    print("어린이 입니다!")
}

// guard는 조건이 false일 때 코드를 더이상 실행시키지 않고 코드블록을 빠져나가는 조건문.
// 조건이 true 일 경우 진행하고, false 일 경우 else코드 블록에서 탈출해야함.
// - else 블록은 필수

for i in 0...10 {
    print(i)
    guard i < 5 else {
        break
    }
}

// if vs guard
// if 조건문은 true일 때 코드블록을 실행하고, false 일 때 다른처리를 함.
// guard 조건문은 false일 때 즉시 탈출.
// if 조건문은 코드블럭을 명시적으로 작성, guard는 true일 때 코드블록이 없고 계속 진행

// switch - case
// 하나의 값을 여러 경우와 비교하는 조건문
// 모든 경우의 조건을 처리해야 함.
// case, default를 사용해서 조건들에 맞는 코드를 실행할 수 있다.
// case에서 조건을 확인하여 조건이 맞다면 코드를 실행하고 switch 코드블록에서 빠져나감.
// case 에서 맞는 조건이 없다면 default에서 구현한 코드가 실행
// case, default조건 뒤에는 : 을 사용하여 동작을 구현해야 함.
// case에서 실행하고 싶은 코드가 없다면 break 키워드를 사용해야 함.
// case에서 조건이 없다면 defalut코드를 실행.
// case에서 조건이 맞아서 실행된 후 아래의 조건도 확인하고 싶다면 fallhrough키워드를 사용해야함.

let score1 = 80

switch score1 {
    case 90...100:
        print("A 등급 입니다!")
    case 80..<90:
        print("B 등급 입니다.")
    case 70..<80:
        print("C 등급 입니다.")
    default:
        print("D 등급 입니다.")
}

var score2 = 50

switch score2 {
    case 90...:
        break
    default:
        print("공부를 더 하세요!")
}

switch score2 {
case 50...:
    print("50점 이상이시군요")
    fallthrough
case 50:
    print("딱 50점이시네요?")
default:
    print("공부를 더 하세요!")
}


// 실습하기
let age1: Int = 50

if age1 > 20 {
    print(age1, "성인입니다.")}
    else if age1 >= 8 {
        print(age1, "학생입니다.")}
    else {
        print(age1, "어린이입니다.")
}


let day: String = "토요알"

switch day {
case "월요일":
    print("출근합니다.")
case "토요일", "일요일" :
    print("휴식합니다.")
default:
    break
}
