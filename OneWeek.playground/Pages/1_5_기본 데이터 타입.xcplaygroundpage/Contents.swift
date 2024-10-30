// Playground file for 1-5 기본 데이터 타입 Assignment
// 작성일: 2024.10.29 (화요일)
// 이 파일은 1-5 기본 데이터 타입 과제를 작성하고 연습을 포함합니다.
//
// 작성자: Jamong
// 과제 설명:
// - 해당 파일에서는 데이터 타입을 이해하고 사용하는 방법을 연습합니다.

// Int(정수형)
// 정수를 표현하는 데이터 타입
let age: Int = 150

print(age)

// Float(실수)
// 3.14, 0.1, -273.15 같은 실수를 표현하는 데이터 타입
// 32비트의 메모리 공간을 차지함 (소수점 이하 6자리까지)
let height: Float = 180.12345678
print(height)

// Double(실수)
// Float와 같이 실수를 표현하는 데이터 타입
// 64비트의 메모리 공간을 차지함 (소수점 이하 15자리까지)
let weight = 80.01234567890123456789
print(weight)

// String(문자열)
// 여러개의 문자를 저장하는 타입
let hello = "안녕하세요!"
print(hello)

let welcomSwiftClass = """
안녕하세요!
Swift 강의에 오신걸 환영 합니다.
"""
print(welcomSwiftClass)

print("저의 나이는 \(age)살 입니다.")

// Character(문자)
// 한 글자를 저장하는 데이터 타입
let firstCharacter: Character = "A"
print(firstCharacter)

// 문자 배열을 String으로 만들 수 있다.
let catCharacters: [Character] = ["C", "a", "t", "!"]
let casString = String(catCharacters)
print(casString)

// Boolean(참 또는 거짓)
// 값은 true 또는 false 두개로 참과 거짓을 결정하는데 사용
let isTrue = true
let isFalse = false

let isArea: Bool = false
print(isArea)


// Tuple(여러 값의 묶음)
// 기본적으로 제공하는 기본데이터 타입으로 개발하기에는 타입이 부족
// 그래서 나온 기능중 하나 Tuple
// 여러값을 하나로 묶어서 관리
// 튜플 내의 값들은 순서대로 저장되며, 각 값은 고유의 인덱스를 가짐
// 튜플의 각 값은 서로 다른 타입을 가질 수 있다.

let person: (String, Int) = ("Jamong", 20)
print(person.0)
print(person.1)

let person2: (name: String, age: Int) = ("Jamong", 20)
print(person2.name)
print(person2.age)


// 실습하기
let age2: Int

let name: String
