//
//  ViewController.swift
//  day05
//
//  Created by TAE IL on 2021/11/09.
//

import UIKit
import SQLite3

var value = 100
var total2 : UILabel?

class ViewController: UIViewController {
    
    @IBOutlet var noText: UITextField!
    @IBOutlet var nameText: UITextField!
    @IBOutlet var queryResult: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        total2 = queryResult
        //외부에서 만든 클래스를 사용해보자
        
        let cal = BasicCal()
        cal.prints()
    }

    @IBAction func deleteBtn(_ sender: UIButton) {
        
        let db = SQLite3DB()
        let no = Int32(noText.text!)!
        db.delete(id: no)

    }
    
    
    
    @IBAction func updateBtn(_ sender: UIButton) {
        let db = SQLite3DB()
        let no = Int32(noText.text!)!
        let name = NSString(utf8String: nameText.text!)!
        db.update(name: name, id: no)
        
    }
    
    
    
    @IBAction func insertBtn(_ sender: UIButton) {
        let db = SQLite3DB()
             let no = Int32(noText.text!)!
             let name = NSString(utf8String: nameText.text!)!
             print("id>> ", no, " name: ", name)
             db.insert(id: no, name: name)

    }
    
    
    
    @IBAction func dbStartBtn(_ sender: UIButton) {
     var db = SQLite3DB()
        //print("fm값은", db.fm)
        // path가 데이터베이스의 경로임
        print("생성된 path는", db.path)
        //db.openDatabase()
        db.createTable()
    }
    
    @IBAction func selectAllBtn(_ sender: UIButton) {
        let db = SQLite3DB()
        db.query()
    }
    
    
    //데이터베이스 클래스 생성
    //class SQLite3DB{
        //자바에서는 File
        //swift에서는 FileManager
        //let fm = FileManager.default
        // 가상기기의 경로를 가지고 온것임.
//        let path = fm.urls(for: .libraryDirectory, in: .userDomainMask).last!.appendingPathComponent("company.db").path
//
      //  let path: String = {
         //         let fm = FileManager.default
        //            print("fm", fm)
        //            print(fm.urls(for:.libraryDirectory, in:.userDomainMask).last!
        //                    .appendingPathComponent("ToDo3.db").path)
            // db가 생성될 경로
        //          return fm.urls(for:.libraryDirectory, in:.userDomainMask).last!
          //                 .appendingPathComponent("company.db").path // ToDo5.db만 바꿔주면 됌
         //   }()
        //가상 기계의 경로(폴더+파일)를 가지고와서, 여기에 sqlite db를 생성해야함.
        // 경로에 디비와 테이블을 만들어야 데이터베이스가 생성된다.


        class SQLite3DB{
            //자바에서는 File
            //swift에서는 FileManager
            //let fm = FileManager.default
            // 가상기기의 경로를 가지고 온것임.
    //        let path = fm.urls(for: .libraryDirectory, in: .userDomainMask).last!.appendingPathComponent("company.db").path
    //
            let path: String = {
                      let fm = FileManager.default
            //            print("fm", fm)
            //            print(fm.urls(for:.libraryDirectory, in:.userDomainMask).last!
            //                    .appendingPathComponent("ToDo3.db").path)
                // db가 생성될 경로
                      return fm.urls(for:.libraryDirectory, in:.userDomainMask).last!
                               .appendingPathComponent("bbs.db").path // ToDo5.db만 바꿔주면 됌
                }()
        
        //db연결하는 함수
        func openDatabase() -> OpaquePointer? {
            var con : OpaquePointer? = nil
            // jdbc연결에서 자바 코드 이것과 같다
            // Connection con = DriverManager.getConnection(url, id, pw);
            // 연결하는 부분
            if sqlite3_open(path, &con) == SQLITE_OK{
                print("연결 성공")
            }else{
                print("연결 실패")
            }
            return con
        }
        
        //table만드는 함수
//        let sql_create =
//        """
//        create table contact(
//        id int primary key not null,
//        name char(255)
//        );
//        """
            let sql_create =
            """
            create table bbs(
            id char(255) primary key not null,
            title char(255),
            content char(255),
            writer char(255)
            );
            """
        func createTable(){
            // db 객체 가져오기
            let db = openDatabase()
            var con : OpaquePointer? = nil
            // jdbc3단계 sql문을 객체화 해줌
            // sql문 객체화, 실행
            
            if sqlite3_prepare_v2(db, sql_create, -1, &con, nil) == SQLITE_OK{
                print("sql문 객체화 성공")
                if sqlite3_step(con) == SQLITE_DONE{
                    print("테이블 생성 성공")
                }else{
                    print("테이블 생성 실패")
                }
            } else{
                print("sql문 객체화 실패")
            }
            // 실행이 성공하면 테이블이 생성되었습니다
           sqlite3_finalize(con)
        }
        
        
        //insert하는 함수
        let sql_insert = "insert into bbs values (?, ?);"
        func insert(id : Int32, name: NSString){
            // db 객체 가져오기
            let db = openDatabase()
            var con : OpaquePointer? = nil
            // jdbc3단계 sql문을 객체화 해줌
            // sql문 객체화, 실행
            
            if sqlite3_prepare_v2(db, sql_insert, -1, &con, nil) == SQLITE_OK{
                
                sqlite3_bind_int(con, 1, id)
                sqlite3_bind_text(con, 2, name.utf8String, -1, nil)
                
                print("sql문 객체화 성공")
                if sqlite3_step(con) == SQLITE_DONE{
                    print("회원가입 성공")
                }else{
                    print("회원가입 실패")
                }
            } else{
                print("sql문 객체화 실패")
            }
            // 실행이 성공하면 테이블이 생성되었습니다
           sqlite3_finalize(con)
        }
    
    //삭제 함수
    let sql_delete = "delete from bbs where id = ?;"
    func delete(id : Int32){
        let db = openDatabase()
        var con : OpaquePointer? = nil
        if sqlite3_prepare_v2(db, sql_delete, -1, &con, nil) == SQLITE_OK{
            sqlite3_bind_int(con, 1, id)
            
            print("sql문 객체화 성공")
           
                if sqlite3_step(con) == SQLITE_DONE{
                    print("데이터 삭제 성공")
                }else{
                    print("데이터 삭제 실패")
                }
            }else{
                print("sql문 객체화 실패")
            }
        sqlite3_finalize(con)
        }
        
    //업데이트 함수
    let sql_update = "update bbs set name = ? where id = ?;"
            //업데이트 함수
            func update(name : NSString, id : Int32){
                let db = openDatabase()
                var con : OpaquePointer? = nil
                if sqlite3_prepare_v2(db, sql_update, -1, &con, nil) == SQLITE_OK{
                    sqlite3_bind_text(con, 1, name.utf8String, -1, nil)
                    sqlite3_bind_int(con, 2, id)
                    print("sql문 객체화 성공")
                    if sqlite3_step(con) == SQLITE_DONE{
                        print("데이터 업데이트 성공")
                    }else{
                        print("데이터 업데이트 실패")
                    }
                } else {
                    print("sql문 객체화 실패")
                }
                sqlite3_finalize(con)
            }
            
            
            

    
    
    
    
     
            //select하는 함수
                //let sql_query = "select * from contact;"
            let sql_query = "select * from bbs;"
                func query(){
            //        total2?.text = "안녕\n안녕\n"
            //        print(total2?.text!)
                    let db = openDatabase()
                    var con : OpaquePointer? = nil
                    //sql문 객체화, 실행
                    if sqlite3_prepare_v2(db, sql_query, -1, &con, nil) == SQLITE_OK {
                        print("sql문 객체화 성공")
                        var result = "" // 검색 결과를 하나의 스트링으로 모아주기 위한 변수
                        while sqlite3_step(con) == SQLITE_ROW{
                            print("회원 검색 성공.")
                            let id = sqlite3_column_int(con, 0)
                            let n = sqlite3_column_text(con, 1)
                            let name = String(cString: n!)
                            var row = "id: " + String(id) + ", name: " + name
                            print("row>>", row)
                            result.append(row + "\n")
                            
                        }
                        print("result >> \n", result)
                        total2?.text = result
                  }else{
                      print("sql문 객체화 실패")
                  }
                  
                    
                    
                  sqlite3_finalize(con)
                    
                }
    
    
    
    
    
} // class end

}

