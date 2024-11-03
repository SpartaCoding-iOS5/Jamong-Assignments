// Playground file for 1-11 클로저 타입 Assignment
// 작성일: 2024.10.03 (일요일)
// 이 파일은 1-11 클로저 과제를 작성하고 연습을 포함합니다.
//
// 작성자: Jamong
// 과제 설명:
// - 해당 파일에서는 클로저 타입를 이해하고 사용하는 방법을 연습합니다.

// 클로저(closure)
// 익명함수라고 불리는 클로저는 함수와 유사하게 특정 작업을 수행하는 코드블록이다.
// 함수의 4가지 요소(이름, 파라미터, 반환타입, 구현부)에서 이름을 제외한 파라미터, 반환타입, 구현부로 구성된다.
// 데이터타입으로 클로저를 사용할 수 있다.
    // 변수에 할당하여 재사용 할 수 있다.
    // 함수의 파라미터로 전달할 수 있다.
// 클로저가 함수 안에 포함된 것이 아니라 클로저 안에 함수가 포함되어 있다.
// 코드의 재사용성을 높이고, 비동기 처리, 컬렉션 연산 등의 장점이 있다.

let closure: (Int, String) -> Void // 반환타입 없음

let closure2: (Int) -> Void

let closure3: (Int) -> Void

let closure4: (Int) -> Int

let closure5: (String, Int) -> Int

let optionalClosure: ((Int) -> Int)? // 옵셔널 타입

// 클로저 구현하기
// 클로저는 익명함수 이므로, 구현할 때 in 키워드를 사용하여 파라미터와 구현부를 구분해야 한다.
// 파라미터 이름은 생략 가능하며 0번째 파라미터 $0으로 사용할 수 있다. ($0, $1, $2...)
// 파라미터가 없다면 in을 생략해야 한다.

let closure6: (Int, String) -> Void = {
    intValue, stringValue in
    print(intValue)
    print(stringValue)
}

closure6(5, "5")

let closure7: () -> Void = {
    print("Hello")
}

let closure8: (Int) -> Int = { value in
    return value * 2
}

let closure9: (String, Int) -> Int = {
    return $0.count + $1
}

let emptyParameterClosure: () -> Void = {
    print("World")
}

let optionalClosure2: ((Int) -> Int)? = {
    return $0 * 2
}

print(optionalClosure2?(10))

// 실습하기

let minusClosure: (Int, Int) -> Int = {
    return $0 - $1
}

let minusClosure2: (Int, Int) -> Int = {
    firstNum, secondNum in
    return firstNum - secondNum
}
print(minusClosure(8, 3))
print(minusClosure2(5, 10))

// trailing closure(트레일링 클로저)
// 클로저에는 경량화 방법이 많이 존재하는데 그 중 하나인 트레일링 클로저에 대해서 알아보자
// 함수를 호출할 때 마지막 파라미터가 클로저일 때 괄호를 닫은 뒤 작성할 수 있다.

func trailingTest(key: String, closure: () -> Void) {
    print(key)
    closure()
}

trailingTest(key: "Key name", closure: {
    print("Hello")
})

trailingTest(key: "Hello") {
    print("Wolrd")
}
