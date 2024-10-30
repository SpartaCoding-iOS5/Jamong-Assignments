// Playground file for Calculator Lv.4
// 작성일: 2024.10.30 (수요일)
//
// 작성자: Jamong
// 과제 설명:
// - 이 파일은 Calculator Lv.4 과제를 포함합니다.

// AbstractOperation라는 추상화된 프로토콜 만들기
// Lv.3에서 만든 연산자 클래스들과 관계를 맺고 Calculator클래스의 내부 코드를 변경
// Lv.3와 비교하여 어떠한 점이 개선 되었는지 스스로 생각해 보기

import UIKit

// 연산을 담당하는 클래스 정의
// Operation 프로토콜은 공통의 연산 메서드를 정의하여 규칙을 정함.
protocol Operation {
    func operate(firstNumber: Int, secondNumber: Int) -> Int
}

// 덧셈 연산을 수행하는 클래스
class AddOperation: Operation {
    func operate(firstNumber: Int, secondNumber: Int) -> Int {
        return firstNumber + secondNumber
    }
}

// 뺼셈 연산을 수행하는 클래스
class subtractOperation: Operation {
    func operate(firstNumber: Int, secondNumber: Int) -> Int {
        return firstNumber - secondNumber
    }
}

// 곱셈 연산을 수행하는 클래스
class MultiplyOperation: Operation {
    func operate(firstNumber: Int, secondNumber: Int) -> Int {
        return firstNumber * secondNumber
    }
}

// 나눗셈 연산을 수행하는 클래스
class DivideOperation: Operation {
    func operate(firstNumber: Int, secondNumber: Int) -> Int {
        guard secondNumber != 0 else {
            fatalError("예외처리: 두번째 인수가 0일 때 나누기")
        }
        return firstNumber / secondNumber
    }
}

// 나머지 연산을 수행하는 클래스
class ModulusOperation: Operation {
    func operate(firstNumber: Int, secondNumber: Int) -> Int {
        guard secondNumber != 0 else {
            fatalError("예외처리: 두번째 인수가 0일 때 나머지")
        }
        return firstNumber % secondNumber
    }
}

// Calculator 클래스 정의
// "+", "-", "*", "/", "%"의 연산자를 사용할 수 있게 정의함.
class Calculator {
    // 각 연산자에 대응하는 연산 클래스를 저장함.
    private var operations: [String: Operation] = [
        "+": AddOperation(),
        "-": subtractOperation(),
        "*": MultiplyOperation(),
        "/": DivideOperation(),
        "%": ModulusOperation()
    ]
    
    // Lv.2에서 calculate 메서드를 받은 것처럼 연산자 기호와 두 정수를 할당할 수 있는 함수를 정의함.
    func calculate(operations str: String, firstNumber: Int, secondNumber: Int) -> Int {
        guard let operation = operations[str] else {
            fatalError("예외처리: 연산자에 포함되어 있지 않음")
        }
        return operation.operate(firstNumber: firstNumber, secondNumber: secondNumber)
    }
}

// 전에 방식과 동일하게 출력
let calculator = Calculator()

let addResult = calculator.calculate(operations: "+", firstNumber: 10, secondNumber: 20)

print(addResult)
