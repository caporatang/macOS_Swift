import UIKit


// 딕셔너리의 값을 알고있는 경우
//var family : [String : String] ["dad" : "홍길동", "mom" : "홍길순"]
// 타입추정으로 둘다 똑같다.
var family = ["dad" : "홍길동", "mom" : "홍길순"]
print(family)
//키 벨류 형태의 딕셔너리
for x in family{
    print(x.key, x.value)
}

//딕셔너리를 만들 때 처음에 값들을 모르고 있다가 나중에 넣는 경우
// 딕셔너리를 먼저 만들고 값을 추가
var hobby : [Int : String] = [ : ]

hobby.updateValue("달리기", forKey: 1)
hobby.updateValue("독서", forKey: 2)
hobby.updateValue("밥먹기", forKey: 3)
print(hobby)

hobby[3] = "수영"
print(hobby)
for (key, value) in hobby{
    print(key, value)
}
hobby.removeValue(forKey: 3)
print(hobby)

var food : String?
print(food)

var food2 : String? = "우동"
food2 = nil
print(food2)

food2 = "떡볶이"
print(food2)
print(food2! + "를 먹었어요...!")

var count : Int? = 100
// 100에다가 100을 더한 것
// 옵셔널이다
print(count)
var result = count! + 100
print("내가 가진 개수는" + String(result))

var today : Character = "화"
switch today {
case "토", "일":
    print("주말입니다.")
case "월","화":
    print("주중입니다")
    fallthrough
default :
    print("놀자.. 놀자.......")
}

func startEnd(array : [Int]) -> (start: Int, end: Int){
    var s = array[0]
    var e = array[array.count-1]
    return (s, e)
}

var arr = [1000, 2000, 3000]
print(startEnd(array: arr))

var (result1, result2) = startEnd(array: arr)
print(result1)
print(result2)


// 제일 친한 친구 이름과 세번째로 제일 친한 친구 이름, 마지막으로 제일 친한 이름 함수 정의
// 함수 호출해서 튜플을 변수에 넣어보세요.
// 세번째 친구 이름은 변수에 저장하지 말기
// 제일 친한 친구 이름, 마지막으로 제일 친한 친구 이름
var names = ["홍길동", "홍길순", "홍길정", "홍길장"]
// 파라메터의 의미를 더 강조하기 위해서 별명을 지을 수 있다
// 별명 사용법 : 별명 파라메터명: 데이터 타입
// 파라메터명을 생략하고자 하는 경우: _(omit)
func friends(array : [String]) -> (friend1: String, friend3: String, friend4: String){
    return (array[0], array[2], array[array.count-1])
}
print(friends(array: names))

var (n1, _, n3) = friends(array: names)
print("첫번째 친한 친구 이름은", n1)
print("마지막 친한 친구 이름은", n3)

print("--------------------------")
var mac = ["m1Air", "m1Pro14", "m1Pro16"]
func wantMac(mac : [String]) -> (macbook1 : String, macbook2 : String, macbook3 : String){
    return (mac[0], mac[1], mac[2])
}
wantMac(mac: mac)
var (mac1, _, mac3) = wantMac(mac: mac)
print(wantMac(mac: mac))
print(mac1)
print(mac3)
print("--------------------------")
func setLevel(_ name:String, _ level: String = "보통등급"){
    print(name + "님의 등급은" + level + "입니다.")
}
// 파라메터를 안넣으면 함수정의할때 입력해둔 값이 디폴트로 들어감
setLevel("홍길동")
setLevel("홍길동", "VIP등급")

// 파라메터를 ...으로 입력하면 추가할수있는 여지를 추가하는것이다
func hobby(_ fields: String...){
    print(fields)
}
hobby("운동", "헬스", "달리기")
hobby("뜨개질", "바느질")
