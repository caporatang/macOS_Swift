//
//  MainCoffee.swift
//  prcaticeProject
//
//  Created by TAE IL on 2021/11/04.
//

import UIKit

class MainCoffee: UIViewController {

    @IBOutlet var idText: UITextField!
    @IBOutlet var btnLogin: UIButton!
    @IBOutlet var idPw: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    
    
    @IBAction func loginAct(_ sender: UIButton) {
        let id = "coffeeMan"
        let pw = "1234"

        let id2 = idText.text!
        let pw2 = idPw.text!

        if id == id2 && pw == pw2 {
        let alert = UIAlertController(title: "로그인", message: "환영합니다 우리 가게는 메뉴가 하나밖에 없어요!", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "확인", style: .default){
            action in
            guard let go = self.storyboard?.instantiateViewController(withIdentifier: "page2")as? CoffeeOrderPage else {
                 return
             }
            go.loginId = id2
             self.present(go, animated: true)
            
            
        })
        self.present(alert, animated: true, completion: nil)
        } else {
        
        let alert = UIAlertController(title: "로그인", message: "비밀번호와 아이디가 일치하지 않아요",
                                      preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "확인", style: .default){
        action in
        })
        self.present(alert, animated: true, completion: nil)
            
        }
        
        
        
        
        
        
        
        
        
        
        
    }
    
    
}

        
        
