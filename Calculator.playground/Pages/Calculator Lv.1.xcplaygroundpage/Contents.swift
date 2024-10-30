// Playground file for Calculator Lv.1
// 작성일: 2024.10.29 (화요일)
//
// 작성자: Jamong
// 과제 설명:
// - 이 파일은 Calculator Lv.1 과제를 포함합니다.

// 더하기, 빼기, 나누기, 곱하기, 연산을 수행할 수 있는 Calculator 클래스 만들기
// 생성한 클래스를 이용하여 연산을 진행하고 출력

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
            return firstNumber / secondNumber
        default:
            return 0
        }
    }
}

let calculator = Calculator()
let addResult = calculator.calculate(operations: "+", firstNumber: 10, secondNumber: 20)

print(addResult)
