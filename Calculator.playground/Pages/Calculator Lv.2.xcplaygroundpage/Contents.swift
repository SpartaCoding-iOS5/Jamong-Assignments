// Playground file for Calculator Lv.2
// 작성일: 2024.10.29 (화요일)
//
// 작성자: Jamong
// 과제 설명:
// - 이 파일은 Calculator Lv.2 과제를 포함합니다.

// Lv.1에서 만든 Calculator 클래스에 "나머지 연산"이 가능하도록 코드를 추가하고 연산 진행 후 출력
// 오류가 날 수 있는 '예외처리' 상황에 대해 고민해보기 + 구현하기

import UIKit

class Calculator {
    
    func calculate(operations: String, firstNumber: Int, secondNumber: Int) -> Int {
        
        switch operations {
        case "+":
            return firstNumber + secondNumber
        case "-":
            return firstNumber - secondNumber
        case "*":
            return firstNumber * secondNumber
        case "/":
            guard secondNumber != 0 else {
                fatalError("예외처리: 두번째 인수가 0일 때 나누기(몫)")
            }
            return firstNumber / secondNumber
        case "%":
            guard secondNumber != 0 else {
                fatalError("예외처리: 두번째 인수가 0일 때 나누기(나머지)")
            }
            return firstNumber % secondNumber
        default:
            fatalError("예외처리: 연산자 없음")
        }
    }
}
let calculator = Calculator()

let remainderResult = calculator.calculate(operations: "%", firstNumber: 5, secondNumber: 3)
print(remainderResult)

// 예외 테스트 (0으로 나누기)
let errorResult = calculator.calculate(operations: "/", firstNumber: 10, secondNumber: 0)
print("오류 테스트:", errorResult)
