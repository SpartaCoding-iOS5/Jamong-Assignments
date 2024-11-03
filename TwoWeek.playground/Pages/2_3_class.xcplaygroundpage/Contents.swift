// Playground file for 2-3 class Assignment
// 작성일: 2024.11.03 (일요일)
// 이 파일은 2-3 class 과제를 작성하고 연습을 포함합니다.
//
// 작성자: Jamong
// 과제 설명:
// - 해당 파일에서는 class 사용하는 방법을 연습합니다.

// class는 연관된 상태는 변수, 상수에 저장하고 행동은 함수를 정의한 후 그룹화하여 데이터 타입으로 사용할 수 있다.

// class 특징
// 프로퍼티와 메소드로 구성되어 있다.
    // 구조체, class 안에 있는 변수, 상수를 프로퍼티라고 한다.
    // 구조체, class 안에 있는 함수를 메소드라고 한다.
// class의 인스턴스를 생성하여 사용할 수 있다.
// class안에서 사용되는 변수와 상수인 프로퍼티에는 default 값을 정해줄 수 있다.
// class의 인스턴스를 생성할 때 반드시 초기화를 해주어야 한다.
// init 초기화를 제공해야 한다.
    // 모든 프로퍼티에 default값을 제공한다면 init 초기화를 생략할 수 있다.
    // 모든 프로퍼티가 Optional인 경우 init 초기화를 생략할 수 있다.
// 초기화를 도와주는 컨비니언스 이니셜라이저(convenience initalizer)를 제공한다.
// class를 사용해서 만들어진 인스턴스는 Reference Type 이다.
    // 인스턴스를 let으로 만들어도 프로퍼티 변경이 가능
    // 함수에 class의 인스턴스를 전달하고 프로퍼티를 변경하면 원본도 변경된다.
// 상속 가능
    // 하위클래스가 상위클래스의 속성(프로퍼티)와 행동(메소드)를 물려받아서 사용할 수 있다.

// class 구현방법, 초기화방법, 사용방법

/*
 // 기본 정의(구현) 방법
 class 클래스이름 {
    // 파라미터 선언
    // 메소드 선언
    
    // 파라미터가 있다면 init을 사용하여 초기화
 }
 
 // 사용방법 (인스턴스로 만드는 방법)
 // 클래스이름()을 사용하면 된다.
 // ()안에 클래스에서 사용하는 init에 들어가는 파라미터를 채워주면 된다.
 */

// init 방법(초기화방법)
// 인스턴스를 생성할 때 모든 프로퍼티를 초기화해야 하며, 이를 위해 init 키워드를 사용한다.
// class에서 init
    // 모든 프로퍼티의 값을 할당해주어야 한다.
        // 값이 없을 수 있는 옵셔널 타입, 초기값을 준 프로퍼티는 예외
    // init을 여러개 만들 수 있다.
    // convenience init(보조 초기화) 기능을 제공한다. (struct에서는 제공하지 않음)
    // 초기화 방법
        // 지정 초기화

class Person {
    var name: String
    var age: Int
    
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
}

let person = Person(name: "Jamong", age: 26)

        // 기본값 초기화

class Person2 {
    var name: String = "이름없음"
    var age: Int = 0
}

let person2 = Person2()

class Person3 {
    var name: String
    var age: Int
    
    init() {
        self.name = "이름없음"
        self.age = 26
    }
}

        // 여러개의 init 사용
class Person4 {
    var name: String
    var age: Int
    
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
    
    init(name: String) {
        self.name = name
        self.age = 0
    }
    
    init() {
        self.name = "이름없음"
        self.age = 26
    }
}

        // convenience init: 보조 초기화
            // 클래스에서만 사용할 수 있는 기능
            // self.init을 사용하여 초기화를 도와줌
class Person5 {
    var name: String
    var age: Int
    
    init(name: String, age: Int){
        self.name = name
        self.age = age
    }
    // name만 받고 init에서 기본값을 정해줄 수 있다.
    convenience init(name: String) {
        self.init(name: name, age: 0)
    }
}

let person5 = Person5(name: "이름만 있어요!")
print(person5.age)


// deinit: 소멸자
// class 에서만 사용 가능
// 사용이 종료된 인스턴스가 메모리에서 해제될 때 자동 호출
// 직접 호출은 할 수 없다.

/*
 deinit{
    // 구현부
 }
 */

let myName = "Jamong"
let myAge = 26

let myFirendName = "샤미"
let myFriendage = 5

func introduce(name: String, age: Int) {
    print("안녕하세요. \(name)입니다. 저는 \(age)살 입니다.")
}

// 소개를 함수로 묶었는데 이름과 나이도 계속 중복된다.
// struct이나 class로 변수, 상수, 함수를 관련된 내용을 모아놓을 수 있다.

class Person6 {
    var name: String
    var age: Int
    
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
    
    func introduce() {
        print("안녕하세요. \(name)입니다. 저는 \(age)살 입니다.")
    }
}

let me = Person6(name: "Jamong", age: 26)
let friend = Person6(name: "샤미", age: 5)

me.age
me.name
me.introduce()

// 실습하기
class Animal {
    var feetCount: Int
    var eyeCount: Int
    var name: String
    
    
    init(feetCount: Int, eyeCount: Int, name: String){
        self.feetCount = feetCount
        self.eyeCount = eyeCount
        self.name = name
    }
    
    convenience init(eyeCount: Int, name: String) {
        self.init(feetCount: 2, eyeCount: eyeCount, name: name)
    }
    
    func introduce() -> String {
        return "feetcount는 \(feetCount), eyecount는 \(eyeCount), 이름은 \(name) 입니다."
    }
}

var person7 = Animal(eyeCount: 2, name: "수강생")
print(person7.feetCount)
print(person7.eyeCount)
print(person7.name)

print(person7.introduce())
