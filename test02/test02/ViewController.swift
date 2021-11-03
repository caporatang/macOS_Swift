//
//  ViewController.swift
//  test02
//
//  Created by TAE IL on 2021/10/29.
//

import UIKit

class ViewController: UIViewController {
    // 이동
    @IBOutlet var button1: UIButton!
    // 얼러트
    @IBOutlet var button2: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


  
    
    
    @IBAction func button2Click(_ sender: UIButton) {
        let alert = UIAlertController(title: "알림", message: "얼럿 메세지 입니다.", preferredStyle: .alert)
                alert.addAction(UIAlertAction(title: "확인", style: .default) { [self] action in
                    self.button1.setTitle("확인완료", for: .normal)
                })
                self.present(alert, animated: true, completion: nil)
    }
    
    
    
    
    
    
    
    
    
    
    
}

