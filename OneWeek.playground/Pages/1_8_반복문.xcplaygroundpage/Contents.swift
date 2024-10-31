// Playground file for 1-8 반복문 Assignment
// 작성일: 2024.10.31 (수요일)
// 이 파일은 1-8 반복문 과제를 작성하고 연습을 포함합니다.
//
// 작성자: Jamong
// 과제 설명:
// - 해당 파일에서는 반복문를 이해하고 사용하는 방법을 연습합니다.

// 반복문은 배열이나 Dictionary같은 Collection Type이나 범위를 반복적으로 접근할 때 사용한다.

let array = [1, 2, 3, 4, 5]

["봄", "여름", "가을", "겨울"]

//for 반복문
//for in 을 사용하여 배열과 범위의 숫자를 반복할 수 있다.

let names = ["Jamong", "Jang", "Kim"]

for name in names {
    print(name)
}

for index in 0...10 {
    print(index)
}

// while 반복문
// while 반복문은 조건이 true인 동안 코드블록을 반복 실행함.
// 조건이 false가 되면 반복을 종료.

var happyNewYearCount = 10

while happyNewYearCount > 0 {
    print(happyNewYearCount)
    happyNewYearCount -= 1
}

print("새해 복 많이 받으세요.")

// 반복문에서 흐름제어를 도와주는 break contiune

// break
// 반복문이나 switch에서 즉시 종료하고, 코드블록을 빠져나올 때 사용함.
// 반복문에서 더이상 반복이 필요없을 때 사용.
// switch에서 특정 case에서 아무런 작업을 하지 않거나, 중간에 작업을 종료하고 싶을때 사용.

for age in 15...99 {
    print(age)
    if age >= 20 {
        break
    }
}

var age4: Int = 15
while age4 > 100 {
    print(age4)
    
    if age4 >= 20 {
        break
    }
    
    age4 += 1
}

var age5 = 15

switch age5 {
    case 15:
        break
    default:
        print("15가 아니에요")
}

let score = 50
switch score {
case 50...:
    print("50점 이상이시군요")
    fallthrough
case 50:
    print("딱 50점이시네요?")
    break
    print("저는 80점인데요~")
default:
    print("공부를 더 하세요!")
}


// Continue
// 반복문 안에서 현재 반복을 건너뛰고 다음 반복으로 넘어갈 때 사용한다.

for number in 1...5 {
    if number % 2 == 0 {
        continue
    }
    
    print(number)
}

// 실습하기

for number in 1...10 {
    guard number < 8 else {
        break
    }
    print(number)
}


var fruits: [String] = ["사과", "바나나", "포도"]

for printFruit in fruits {
    print(printFruit)
}

for number in 1...20 {
    if number % 2 == 0 {
        print(number)
    }
}

var indexNum = 10

while indexNum > 0 {
    print(indexNum)
    indexNum -= 1
}

var sum = 0
indexNum = 5
while indexNum > 0 {
    sum += indexNum
    indexNum -= 1
}
print(sum)
