import UIKit

// 배열의 값을 이미 알고 있는 경우
var shoppingList = ["달걀", "우유"]

print(shoppingList)

// 쇼핑리스트 2를 만들자 비어있는 배열을 만듦
var shoppingList2 : [String] = []

// 배열에 값들을 추가하자
shoppingList2.append("가방")
shoppingList2.append("볼펜")
shoppingList2.append("마우스")

print(shoppingList2)

shoppingList2[0] = "맥"
print(shoppingList2[0])

// 카운트 함수를 쓰자
print("전체 쇼핑리스트의 개수는 \(shoppingList2.count)개")

//인덱스를 초과하기 떄문에 에러가난다
//shoppingList2[3] = "물"

// 1번에 값을 삽입하자
shoppingList2.insert("충전기", at: 1)
// 길이가 유동으로 바뀌기 때문에 인덱스가 바뀌는것을 조심해야한다.
print(shoppingList2)

//0번 인덱스에 있던 맥을 삭제하자
shoppingList2.remove(at: 0)
print(shoppingList2)

// for each 를돌려보자
var count = 0
for x in shoppingList2{
    print("꺼낸 값은", x)
//    if x == "볼펜" {
//        print("컴퓨터 관련 물품이 아니예요")
//    }else{
//        print("컴퓨터 관련 물품이예요")
//        count = count + 1
//    }
    // 볼펜은 패스하고 넘어가라
    if x == "볼펜"{
        continue
    }
    count = count + 1
} // for each end

print("전체중에서 컴퓨터 관련된 물건의 개수는", count, "개")


// 1 ~ 5까지 인덱스와 값을 동시에 가져와라
for x in 0..<5{
    print(x)
}
//for x in 0...5{
//    print(x)
//}


// 배열에 적용해보자
for x2 in 0..<shoppingList2.count{
    print(shoppingList2[x2])
}

//튜플 : 읽기 전용으로 배열의 인덱스와 값을 동시에 가져올수있다
for (index, value) in shoppingList2.enumerated(){
    print(index, ": ", value)
}

// Int 배열 1,3,5,6,7,9를 만들어서
// 각 인덱스와 값을 프린트해보세요
var num = [1,3,5,6,7,9]
for (index, value) in num.enumerated(){
    print(index, "번: ", value)
}
var num3 = 0
var num4 = 0
for (index, value) in num.enumerated(){
    print(index, "번: ", value + 100)
    
    if value%2 == 0 {
        num4 = num4 + 1
    } else{
        num3 = num3 + 1
    }
}
print("짝수는 \(num4) 개")
print("홀수는 \(num3) 개")


// ? < 붙으면 nil을 허용하는 여지를 주는것이다.
var num8 : Int? = 100
 //num8 = nil
print(num8)


