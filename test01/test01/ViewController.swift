//
//  ViewController.swift
//  test01
//
//  Created by TAE IL on 2021/10/29.
//

import UIKit
                
class ViewController: UIViewController {
    // 어노테이션, 변수 변수명.   버튼타입
    @IBOutlet var button1: UIButton!
    @IBOutlet var button2: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        print("swift start~~~")
        
        
        
    }
    @IBAction func button1Click(_ sender: UIButton) {
        let alert = UIAlertController(title: "알림", message: "얼럿 메세지 입니다.", preferredStyle: .alert)
                alert.addAction(UIAlertAction(title: "확인", style: .default) { [self] action in
                    self.button1.setTitle("확인완료", for: .normal)
                })
                self.present(alert, animated: true, completion: nil)
    }
    }
   
    
   
    
    
    
    


