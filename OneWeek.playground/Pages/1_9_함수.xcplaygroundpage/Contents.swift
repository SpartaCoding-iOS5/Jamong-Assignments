// Playground file for 1-9 함수 Assignment
// 작성일: 2024.10.31 (수요일)
// 이 파일은 1-9 함수 과제를 작성하고 연습을 포함합니다.
//
// 작성자: Jamong
// 과제 설명:
// - 해당 파일에서는 함수를 이해하고 사용하는 방법을 연습합니다.

// 함수는 재사용이 가능한 코드의 집합
// 특정 작업을 수행하는 코드 블록

// 함수는 function이라고 불리며, 코드를 구조적이고 효율적으로 작성하는데 도움.
// 동일한 작업을 반복해서 작성할 필요 없게 도와줌.
// 함수는 선언과 사용으로 나눌 수 있다.
// 함수의 선언 : 함수를 정의하는 과정.
// func 키워드를 사용하여 시작
// 함수 선언의 4가지 요소 : 함수의 이름, 파라미타(일므, 타입), 반환 타입, 구현부
// 함수의 사용 : 정의한 함수를 호출하여 실제로 실행하는 과정
// 함수의 이름뒤에 ()를 사용하여 함수를 실행
// ()안에 파라미터를 넣을 수 있다.
// 함수를 사용하여 나온 결과값을 변수나 상수에 할당할 수 있다.

func sayHello(name: String) {
    print("\(name)님 안녕하세요.")
}

sayHello(name: "jamong")

func sayBye(_ name: String) {
    print("\(name)님 안녕히가세요.")
}

sayBye("jamong")

func messageToBirthday(isTodayBirthDay: Bool) -> String {
    if isTodayBirthDay {
        return "생일입니다."
    } else {
        return "생일이 아닙니다."
    }
}

print(messageToBirthday(isTodayBirthDay: true))


// 실습하기

func introduce(name: String) -> String {
    return ("안녕하세요. \(name)입니다.")
}

print(introduce(name: "jamong"))


func plus(firstNumber: Int, secondNumber: Int) -> Int {
    let result = firstNumber + secondNumber
    return result
}

print(plus(firstNumber: 10, secondNumber: 20))

func helloWorld() {
    print("Hello World")
}

helloWorld()
