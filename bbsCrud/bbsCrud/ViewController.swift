//
//  ViewController.swift
//  bbsCrud
//
//  Created by TAE IL on 2021/11/09.
//

import UIKit
import SQLite3
var value = 100
var total2 : UILabel?

class ViewController: UIViewController {

    @IBOutlet var writerText: UITextField!
    @IBOutlet var contentText: UITextField!
    @IBOutlet var titleText: UITextField!
    @IBOutlet var idText: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
       // total2 = queryResult
        // Do any additional setup after loading the view.
    }


    @IBAction func writeBtn(_ sender: UIButton) {
        let db = SQLite3DB()
        let id = NSString(utf8String: idText.text!)!
        let title = NSString(utf8String: titleText.text!)!
        let content = NSString(utf8String: contentText.text!)!
        let writer = NSString(utf8String: writerText.text!)!
        db.insert(id: id, title: title, content: content, writer: writer)
    }
    
    
    @IBAction func updateBtn(_ sender: UIButton) {
    }
    
    
    @IBAction func deleteBtn(_ sender: UIButton) {
    }
    
    
    @IBAction func readBtn(_ sender: UIButton) {
        let db = SQLite3DB()
       // db.query()
    }
    
    
    class SQLite3DB{
        let path: String = { let fm = FileManager.default
            return fm.urls(for:.libraryDirectory, in:.userDomainMask).last!
                     .appendingPathComponent("bbs.db").path
      }()
    
    //db연결 함수
    func openDatabase() -> OpaquePointer? {
        var con : OpaquePointer? = nil
        if sqlite3_open(path, &con) == SQLITE_OK{
            print("연결 성공")
        }else{
            print("연결 실패")
        }
        return con
    }
    
    //let sql_insert = "insert into bbs values (?, ?, ?, ?);"
//    let sql_insert = "insert into bbs values (?, ?, ?, ?)"
//        func insert(id : NSString, title : NSString, content : NSString, writer : NSString){
//            let db = openDatabase()
//            var con : OpaquePointer? = nil
//
//            if sqlite3_prepare_v2(db, sql_insert, -1, &con, nil) == SQLITE_OK{
//
//                sqlite3_bind_text(con, 1, id.utf8String, -1, nil)
//                sqlite3_bind_text(con, 2, title.utf8String, -1, nil)
//                sqlite3_bind_text(con, 3, content.utf8String, -1, nil)
//                sqlite3_bind_text(con, 4, writer.utf8String, -1, nil)
//
//                print("sql문 객체화 성공")
//                if sqlite3_step(con) == SQLITE_DONE{
//                    print("글쓰기 성공")
//                }else{
//                    print("글쓰기 실패")
//                }
//            } else{
//                print("sql문 객체화 실패")
//            }
//           sqlite3_finalize(con)
//        }
//
    let sql_insert = "insert into bbs values (?, ?, ?, ?)"
        func insert(id : NSString, title : NSString, content : NSString, writer : NSString){
            let db = openDatabase()
            var con : OpaquePointer? = nil
            if sqlite3_prepare_v2(db, sql_insert, -1, &con, nil) == SQLITE_OK{
                sqlite3_bind_text(con, 1, id.utf8String, -1, nil)
                sqlite3_bind_text(con, 2, title.utf8String, -1, nil)
                sqlite3_bind_text(con, 3, content.utf8String, -1, nil)
                sqlite3_bind_text(con, 4, writer.utf8String, -1, nil)
                
                print("sql문 객체화 성공")
                if sqlite3_step(con) == SQLITE_DONE{
                    print("데이터 삽입 성공")
                } else{
                    print("데이터 삽입 실패")
                }
            } else{
                print("sql문 객체화 실패")
            }
            
            
            
            
            
        }
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
    
    
    
    
    
}

}
