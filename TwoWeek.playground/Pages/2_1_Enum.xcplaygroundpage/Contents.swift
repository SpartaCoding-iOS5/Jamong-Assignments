// Playground file for 2-1 Enum Assignment
// 작성일: 2024.11.03 (일요일)
// 이 파일은 2-1 Enum 과제를 작성하고 연습을 포함합니다.
//
// 작성자: Jamong
// 과제 설명:
// - 해당 파일에서는 Enum을 사용하는 방법을 연습합니다.

// Enum(열거형)은 Swift에서 특정 주제나 종류에 따라 묶을 수 있는 값들을 그룹화하고 정의하여 데이터타입으로 사용할 수 있다.

// Enum 특징
 // - 관련된 값을 그룹화 할 수 있다.
 // - enum 키워드와 코드블록 내에서 case를 사용하여 정의할 수 있다.
 // - 타입 안정성을 보장하고, 의도를 명확하게 파악할 수 있다.
 // - 정의한 enum은 데이터 타입으로 사용할 수 있다.
 // - enum을 사용하여 만들어진 인스턴스는 value Type

// 기본 선언
enum Season {
    case spring
    case summer
    case autumn
    case winter
}

// 기본 접근 방법
Season.spring
Season.summer

var season: Season = .spring

var summer: Season = .summer

summer = .spring


// Associated Values(연관 값)
// 단순히 여러 값을 나열하는 것 이상의 기능을 제공
// 추가적인 정보를 연관시켜 저장할 수 있는 기능
// 각 case와 함께 타입을 지정하여 선언하면 연관값을 가질 수 있다.

enum DeliveryStatus {
    case ordered
    case shopping(trackingNumber: String)
    case delevereCompleted(data: String)
}

let status = DeliveryStatus.shopping(trackingNumber: "123")

print(status)

switch status {
case .ordered:
    print("주문완료!")
case .shopping(let trackingNumber):
    print("배송중! 송장번호: \(trackingNumber)")
case . delevereCompleted(let data):
    print("배송완료! 배송일: \(data)")
}

// enum Raw Values(원시값)
// 각 case 마다 기본으로 설정된 원시값을 저장할 수 있다.
// enum 이름 뒤에 콜론: 을 작성한 후 타입을 명시해주어야 한다.
// case 뒤에 = 을 사용하여 원시값을 정해줄 수 있다.
// rawValue를 사용하여 enum의 값을 만들 수 있다.

enum Season2: String {
    case spring = "값을 정해줄 수 있어요"
    case summer
    case autumn
    case winter
}

let season3 = Season2.spring
print(season3.rawValue)

let season2 = Season2.summer
print(season2.rawValue)

let newSeason = Season2(rawValue: "summer")
print(newSeason)


// Swift Convention Guide No.6 -> enum, class, struct 이름 짓는 방법
// enun, class, struct 공통으로 이름짓는 방법
// enum, class, struct는 데이터타입으로 사용할 수 있으며, 이름은 대문자로 시작하는 Camel Case로 이름을 만들고 있다.



// 실습하기

enum Direction: String {
    case north
    case east
    case south
    case west
    
    func toString() -> String {
        switch self {
        case .north: "북"
        case .east: "동"
        case .south: "남"
        case .west: "서"
        }
    }
}

let direction = Direction.north
print(direction.toString())


enum Rainbow: Int {
    case red = 0
    case orange = 1
    case yellow = 2
    case green
    case blue
    case navy
    case purple
}

var rainbow: Rainbow

rainbow = .yellow

print(rainbow.rawValue)

var rainbow2: Rainbow = .purple

print(rainbow2.rawValue)


enum Beverage {
    case coffee(coffeeName: String, size: Int)
    case tea(teaName: String, isIced: Bool)
    case juice(juice: String)
}

//var myDrink: Beverage = .coffee(coffeeName: "아이스아메리카노", size: 100)

var myDrink: Beverage = .tea(teaName: "자몽티", isIced: false)

switch myDrink {
case .coffee(let coffeeName, let size):
    print("커피는 \(coffeeName)로 사이즈는 \(size)")
case .tea(let teaName, let isIced):
    if isIced {
        print("티는 \(teaName)이고 아이스로 주세요.")}
    else{
        print("티는 \(teaName)이고 뜨겁게 주세요.")}
case .juice(let juice):
print("\(juice) 주세요.")
}



