// Playground file for Calculator Lv.3
// 작성일: 2024.10.30 (수요일)
//
// 작성자: Jamong
// 과제 설명:
// - 이 파일은 Calculator Lv.3 과제를 포함합니다.

// Lv.2에서 만든 Calculator에서 각각의 클래스들을 만들고 클래스간의 관계를 고려하여 관계 맺기
// Lv.2와 비교하여 어떠한 점이 개선 되었는지 스스로 생각해 보기

import UIKit

// 덧셈 연산을 수행하는 클래스
class AddOperation {
    func operate(firstNumber: Int, secondNumber: Int) -> Int {
        return firstNumber + secondNumber
    }
}


// 뺼셈 연산을 수행하는 클래스
class SubtractOperation {
    func operate(firstNumber: Int, secondNumber: Int) -> Int {
        return firstNumber - secondNumber
    }
}

// 곱셈 연산을 수행하는 클래스
class MultiplyOperation {
    func operate(firstNumber: Int, secondNumber: Int) -> Int {
        return firstNumber * secondNumber
    }
}

// 나눗셈 연산을 수행하는 클래스
class DivideOperation {
    func operate(firstNumber: Int, secondNumber: Int) -> Int {
        guard secondNumber != 0 else {
            fatalError("예외처리: 두번째 인수가 0일 때 나누기")
        }
        return firstNumber / secondNumber
    }
}

// 나머지 연산을 수행하는 클래스
class ModulusOperation {
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
    private let addOperation = AddOperation()
    private let subtractOperation = SubtractOperation()
    private let multiplyOperation = MultiplyOperation()
    private let divideOperation = DivideOperation()
    private let modulusOperation = ModulusOperation()
    
    func calculate(operation: String, firstNumber: Int, secondNumber: Int) -> Int {
        switch operation {
        case "+":
            return addOperation.operate(firstNumber: firstNumber, secondNumber: secondNumber)
        case "-":
            return subtractOperation.operate(firstNumber: firstNumber, secondNumber: secondNumber)
        case "*":
            return multiplyOperation.operate(firstNumber: firstNumber, secondNumber: secondNumber)
        case "/":
            return divideOperation.operate(firstNumber: firstNumber, secondNumber: secondNumber)
        case "%":
            return modulusOperation.operate(firstNumber: firstNumber, secondNumber: secondNumber)
        default:
            fatalError("예외처리: 없는 연산자")
        }
    }
}

// 전에 방식과 동일하게 출력
let calculator = Calculator()

let addResult = calculator.calculate(operation: "+", firstNumber: 10, secondNumber: 20)

print(addResult)
