import UIKit

struct Sample {
    // 생성자(이니셜라이저)
    //오버로딩(함수이름 동일하게 쓸 수 있다.)
    // 멤버 변수 (인스턴스 변수)
    // 스태틱 변수
    var name : String = "" // 멤버변수(인스턴스 변수)
    var age : Int = 100
    static var count : Int = 0 // 스태틱 변수
    
    // 멤버 함수(일반 함수)
    func play(_ hour : Int) -> String {
        return "나는 " + String(hour) + "시간 놀거예요~"
    }
    
    // 스태틱 함수
    static func getCount() -> Int {
        return count
    }
}
// Sample s1 = new Sample()  -> java version
var s1 : Sample = Sample()  // 인스턴스
var s2 : Sample = Sample()  // 인스턴스

s1.name = "홍길동"
s1.age = 200
print(s1.name, s1.age)

s1.name = "김길동"
s1.age = 300
print(s2.name, s2.age)

//struct Int {
//    static var min = -22222
//    static var max = 2222
//}
//print(Int.max)

//구조체를 만들어보자.
//Student구조체, 이름, 학과, 학번, 전화번호
// 학생 인스턴스 2명 만들어서 프린트
struct Student {
    var name : String = ""
    var age : Int = 0
     var number : Int = 0
     var tel : Int = 0
}
//구조체 객체 생성
var stu1 : Student = Student()
var stu2 : Student = Student()
stu1.name = "고길동"
stu1.age = 20
stu1.number = 19991819
stu1.tel = 01099993333
print(stu1.name, stu1.age, stu1.number, stu1.tel)


stu2.name = "동길고"
stu2.age = 30
stu2.number = 12345345
stu2.tel = 01033334444
print(stu2.name, stu2.age, stu2.number, stu2.tel)

class Student2{
    var name : String = ""
    var age : Int = 0
    // 생성자
    init() {
        print("객체가 생성")
    }
    // 오버로딩
    init(_ name: String, _ age : Int) {
        self.name = name
        self.age = age
    }
    func study() {
        print("공부하다")
    }
    func print2(){
        print("이름은 " + name + ", " + String(age))
    }
}
var ss1 = Student2()
ss1.name = "최길동"
ss1.age = 400
ss1.print2()
var ss2 = Student2("정길동", 300)
ss2.print2()

// 상속을 받아보자
// 상속시 자식 객체가 생성되는 경우 생성자가 자동 호출된다.
// 자식 객체는 부모 객체가 먼저 만들어지고 그것을 확장해서 만드는 개념이기 때문에
// 자식의 생성자가 호출될 때 부모의 생성자가 먼저!! 반드시 호출된다
//class High : Student2{
//    // 인스턴스 변수 2개 추가, hour, where
//    var hour = 0
//    var location = ""
//    // 일반함수 추가
//    func nightSelfStudy(_ hour: Int) {
//     print("야간자율학습이 " + String(hour) + " 시간 이예요")
//    }
//
//    func go() {
//        print("고등학생은 어디론가 계속 돌아다녀요")
//    }
//    // overrid study(), print2
//    override func study() {
//        print("스터디를 오버라이드 했어요.")
//    }
//    override func print2 () {
//        print("나는 프린트2를 오버라이드 했어요")
//    }
//}
//
//var hStudent = High()
//hStudent.study()
//hStudent.hour = 3
//hStudent.location = "수리고등학교"
//hStudent.name = "상속받았으니까 부모것도 사용 가능해요"
//hStudent.age = 0
//hStudent.nightSelfStudy(3)
//hStudent.go()



//상속을 받아봅시다. >>>> 선생님 코드
/// 상속을 받아보자
 //상속시 자식 객체가 생성되는 경우 생성자가 자동 호출된다.
// 자식 객체는 부모 객체가 먼저 만들어지고 그것을 확장해서 만드는 개념이기 때문에
 //자식의 생성자가 호출될 때 "부모의 생성자가 먼저!! 반드시 호출" 된다.!
class High : Student2 {
    var hour = 0
    var location = "학교"

    //인스턴스 변수 2개 추가, hour, location
    //일반 함수 2개 추가, nightSelfStudy(), go()
    //overrid study(), print2()
    override init() {
    //부모 생성호출은 첫줄에 써야한다
    //자바는 묵시적으로 자동으로 부모의 기본 생성자를 호출된다.
    //자바는 생략 가능하다
    //스위프트는 생략이 불가능하다
        super.init()
        print("고등학생 객체가 생성되었음.")
    }

    init(_ name: String, _ age: Int, _ hour: Int, _ location: String) {
          //이렇게 추가해주면 부모의 변수도 초기화가 다 된다.
        super.init(name, age)
          self.hour = hour
          self.location = location
    }

    func go(_ location2: String) {
        print(location2 + "를 가요.!!")
    }

    func nightSelfStudy() {
        print("야간 자율학습을 하다.")
    }

    override func print2() {
        print(name, age, hour, location)
    }
    override func study() {
        print("입시 공부를 하다.")
    }
}
//객체생성, 멤버변수 프린트
let h1 = High()
h1.name = "박박박"
h1.age = 555
h1.hour = 3
h1.location = "학교 자습실"
h1.nightSelfStudy()
h1.go("전시회")
h1.study()
h1.print2()

let h2 = High("박박박", 666, 5, "학교 실습실")
h2.nightSelfStudy()
h2.go("콘서트")
h2.study()
h2.print2()


//var value2 : String? // nil
var value2 : String? = "i am value2 value"
var value1 = "i am default value"
var value3 = value2 ?? value1
print(value3)

