# Jamong-Assignments

iOS-5기 김상민의 개인 레파지토리.

내일배움캠프의 Swift 프로그래밍 강의 실슬 및 개인 과제 코드를 포함합니다.

---

## Repository Structure

- `Calculator.playground`: Calculator 과제의 코드가 포함된 Playground 파일
- `OneWeek.playground`: 내일배움캠프의 Swift 문법 학습에 실습했던 코드가 포함된 Playground 파일

---

## 1. Calculator 과제 

### 과제 설명

Calculator 과제는 기본적인 사칙연산에서부터 예외 처리, 클래스의 단일처리 및 추상화까지 단계별로 구현한 코드입니다.

- `Lv.1`: Calculator 클래스에 덧셈, 뺄셈, 곱셈, 나눗셈 기능을 추가했습니다.
- `Lv.2`: Lv.1의 계산기에 나머지 연산을 추가하고, 0으로 나누는 상황을 guard문을 사용하여 예외 처리했습니다.
- `Lv.3`: 각 연산 기능을 독립된 클래스로 분리하여 단일 책임 원칙을 적용하고, Calculator 클래스가 각 연산 클래스를 사용하는 구조로 개선했습니다.
- `Lv.4`: `Operation` 프로토콜을 정의하고 각 연산 클래스가 이 프로토콜을 채택하도록 하여 추상화를 적용했습니다. 이를 통해 결합도를 낮추고 유연성을 높인 구조로 개선했습니다.

### 실행 예시

Calculator 클래스는 아래와 같은 방식으로 사용할 수 있습니다.

```swfit
let calculator = Calculator()
let result = calculator.calculate(operation: "+", firstNumber: 10, secondNumber: 20)
print(result) // 30
```
