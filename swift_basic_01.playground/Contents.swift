import UIKit
import Darwin
import Foundation
//
//var name = "taeil"
//
//var age = 10000
//
//print("나이는\(age)")
//print("나이는\(name)")
//print("나이는",age,name,"메롱")

//var age2 : Int = 100
//
////Uint는 -를 넣을 수 없음
//var age : UInt = 100
//var weight : Double = 22.2
//var food : Bool = false
//var gender : Character = "남"
//
//var name : String = "홍길동"
//
//print("나이는", age)
//print("무게는", weight)
//print("밥 먹었나요", food)
//print("성별은", gender)
//print("이름은", name)

//문제
// 자기에 대해 기본형 타입을 사용하여 소개

//var name : String = "김태일"
//var age : Int = 27
//var weight : Double = 1000.5
//var food : Bool = true
//var gender : Character = "남"
//
//print("이름은?", name)
//print("나이는?", age)
//print("몸무게는? ", weight)
//print("점심 먹었나요 ?", food)
//print("성별은?", gender)
//print("min은 몇인가요??",UInt.min)
//print("max는 몇인가요???", UInt.max)
//
//var someValue : String = "데이터타입을 지정"
//var someValue2 = "데이터 타입을 추론"
//var someValue3 : Any = " 아무 타입이나 넣을수있는게 Any 타입"
//
//print(someValue3)
//
//someValue2 = 100
//print(someValue2)
//
//someValue3 = 100
//print("섬밸류 3" , someValue3)

// 연상자 : 산술, 비교(==, !=), 논리(&&, ||, !)
// 비교, 논리 연산자의 결과는 Bool(true, false)

// 자바는 고정크기 배열
// int[] arr = new int[10]; >> 열두개의 저장공간
// arr[9] = 100;


// 스위프트는 가변크기
//arr2 = []
//arr2[9] = 200; 특정 인덱스에 값을 넣어주는게 불가능하다
//arr2.append(100)
//arr2[0] = 200

//int[] arr =      배열 선언하는 방법
//var arr : Array<Int> = Array<Int>()
//var arr2 : Array<Int> = [Int]()
//var arr3 : Array<Int> = []
//var arr4 : [Int] = [Int]()
//var arr5 : [Int] = []
// 3버전에선 가능하다
//var arr6 : [Int]()

//arr.append(1)
//arr.append(2)
//arr.append(3)

//print(arr.count)

//배열의 인덱스0에 1000을 넣어보세요.
// 배열의 인덱스2에 2000을 넣어보세요
// 배열의 인덱스1을 지워보세요. 전체 개수를 다시 프린트
//arr[0] = 1000
//arr[2] = 2000
//print(arr[0], arr[2])


//print(arr[0])
//arr.remove(at:1)
//print(arr[1])
//print(arr.count)
//
//print(arr.contains(1000))
//arr.removeAll()
//print(arr.count)

// 운동선수 5명을 배열에 넣어서
// 전체명단을 프린트 해보고,
// 전체 몇명인지 프린트
// 첫번째, 세번째, 네번째 사람을 삭제 후 전체 명단 프린트
// 두명 추가(뒤에)
// 1, 3 인덱스에 사람을 추가 후 , 전체명단 프린트
// 전체 몇명인지 프린트
// 이 명단안에 김연아가 있나요?
// 이 명단안에 김연경이 있나요 ?
//var soccerTeam : Array<String> = Array<String>()
//soccerTeam.append("")
//soccerTeam.append("")
//soccerTeam.append("")
//soccerTeam.append("")
//soccerTeam.append("")
//
//soccerTeam[0] = "축구선수1"
//soccerTeam[1] = "축구선수2"
//soccerTeam[2] = "축구선수3"
//soccerTeam[3] = "축구선수4"
//soccerTeam[4] = "축구선수5"
//
////전체선수명단 프린트
//print(soccerTeam)
////전체 선수의 수
//print("선수는 몇명?",soccerTeam.count)
////선수 삭제
//soccerTeam.remove(at:0)
//soccerTeam.remove(at:1)
//soccerTeam.remove(at:1)
//print(soccerTeam)
//
////soccerTeam.append("")
////soccerTeam.append("")
//print(soccerTeam)
//
//soccerTeam.insert("새로온선수9", at: 0)
//soccerTeam.insert("새로온선수8", at: 3)
//print(soccerTeam)
//print(soccerTeam.count)
//print("팀에 김연아가 있나요 ?",soccerTeam.contains("김연아"))
//print("팀에 김연경이 있나요 ?",soccerTeam.contains("김연경"))

// 함수 정의
// func 함수(파라메터변수명: 타입) -> 리턴타입 {return 리턴값}
func remove(location : Int) -> Int{
    return 1000 + location
}

print(remove(location : 100))

 //"오늘은", "수요일" => "오늘은 수요일입니다."프린트 => Void
func today(day : String) -> Void{
    print("오늘은" + day + "입니다")
}
print(today(day: "수요일"))

//"두 수를 입력값으로 넣어 더한 값을 리턴
func total(num1 : Int, num2 : Int) -> Int{
    
    return num1 + num2
}

print(total(num1 : 33, num2 : 33))


var responseMessages = [200: "OK",
                        403: "Access forbidden",
                        404: "File not found",
                        500: "Internal server error"]
print(responseMessages[200])
print(responseMessages[403])
print(responseMessages[404])
print(responseMessages[500])
