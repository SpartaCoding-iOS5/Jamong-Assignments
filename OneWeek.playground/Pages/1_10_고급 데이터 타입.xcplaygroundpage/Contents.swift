// Playground file for 1-10 고급 데이터 타입(Array, Set, Dictionary) Assignment
// 작성일: 2024.10.31 (목요일)
// 이 파일은 1-10 고급 데이터 타입 과제를 작성하고 연습을 포함합니다.
//
// 작성자: Jamong
// 과제 설명:
// - 해당 파일에서는 고급 데이터 타입를 이해하고 사용하는 방법을 연습합니다.

// 변수나 상수에는 단일 값 뿐만 아니라 여러 값을 모아 저장할 수 있다.
// 이를 위해 Collection Type을 사용하며, Swift에서 자주 사용되는 Collection Type인 Array, Set, Dictionary에 대해 알아본다.

// Array 배열
// 동일한 데이터 타입의 여러개 값을 순서대로 저장하는 데이터 타입
// 대괄호로 감싸서 만들 수 있다.
// 타입으로는 [데이터타입] 형식으로 타입을 정의할 수 있다.
// 순서(인덱스)는 0부터 시작한다.
// 배열에 접근하려면 [] 안에 index를 입력하여 접근할 수 있다.

let array = [1, 2, 3, 4]
array[0]

// 유의사항 : 배열의 크기보다 큰 Index에 접근하면 런타인오류가 발생한다.

var array2: [Int] = [10, 20, 30]

let array3: [String] = ["Hello", "World"]
let emptyArray = [String]()

// 배열과 반복문, 조건문 등을 같이 사용해보자
// 배열은 순서대로 여러개 값을 저장한다.
// Collection Type은 반복문을 사용할 수 있다.
var array4 = [1, 2, 3, 4, 5, 6]

for value in array4 {
    print(value)
}

for index in 0 ..< array4.count {
    print("Index : \(index), Array Value : \(array4[index])")
}

// Set 배열

var emptySet2: Set<String> = []
var emptySet3 = Set<String>()

var defaultSet: Set<String> = ["A", "B", "C"]
var typeInferredSet: Set = ["A", "B", "C"]

for value in typeInferredSet {
    print(value)
}

// Dictionary
// 딕셔너리는 순서와 상관없이 키(Key)와 값(Value)의 쌍으로 데이터를 저장하는 Collection Type이다.
// Key와 Value가 쌍으로 저장
// 순서는 상관이 없다.
// key는 중복을 허용하지 않고 중복된 key에 새로운 값을 할당하면 value가 최신의 값으로 업데이트 된다.
// [] 대괄호안에 :를 기준으로 key, value를 나누어서 사용한다.

var emptyDictionary: [String: Int] = [:]

var emptyDictionary2 = [Int: String]()

var defaultDictionary: [String: String] = ["A": "Apple", "B": "Banana"]

var defaultDictionary2 = ["A": "Apple", "B": "Banana"]

// 사용법
var defaultDictionary3 = ["A": "Apple", "B": "Banana"]

print(defaultDictionary3["A"])

defaultDictionary3["C"] = "Cherry"

print(defaultDictionary3)

defaultDictionary3["A"] = "Avocado"

print(defaultDictionary3["A"])

print(defaultDictionary3)


// 실습하기
var testArray: [Int] = []

for index in 0...10 {
    testArray.append(index)
}

testArray.append(15)
testArray.append(20)

testArray.remove(at: 0)

for Index in testArray {
    if Index % 2 == 1 {
        print(Index)
    }
}


var testSet: Set<String> = ["1", "2", "3"]
testSet.insert("3")
print(testSet)

var isFourContain = testSet.contains("4")
print(isFourContain)


testSet.remove("1")
print(testSet)


var testDictionary: [String: String] = [:]

testDictionary["A"] = "Apple"
testDictionary["B"] = "Banana"
print(testDictionary)
testDictionary["A"] = "Avocado"

print(testDictionary.count)

print(testDictionary
)
