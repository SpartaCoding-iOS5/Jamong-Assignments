// Playground file for 2-2 인스턴스와 init Assignment
// 작성일: 2024.11.03 (일요일)
// 이 파일은 2-2 인스턴스와 init 과제를 작성하고 연습을 포함합니다.
//
// 작성자: Jamong
// 과제 설명:
// - 해당 파일에서는 인스턴스와 init 사용하는 방법을 연습합니다.


// 인스턴스는 class, struct, enum과 같은 설계도를 기반으로 실제 메모리에 생성되는 실체
// class, struct, enum은 설계도의 역활을 하고 인스턴스는 설계도를 보고 직접 만들어져서 메모리에 저장되어 있는 값

// 인스턴스의 init
// 인스턴스를 생성할 때 상태를 초기화하여 생성해야 한다.
// 필요한 프로퍼티를 넣어서 초기화하여 생성한다.
// init 키워드를 사용하여 모든 변수, 상수(프로퍼티)을 초기화 해야 한다.
// 변수나 상수에 기본값을 정해주거나 값이 없음을 나타내는 Optional 타입으로 선언하면 초기화하지 않아도 된다.


// enum에서 init

enum Season: String {
    case spring
    case summer
    case autmn
    case winter
}

let season: Season = .spring

// 값을 할당하면 자동으로 초기화 된다.

