//
//  Page2Controller.swift
//  day03
//
//  Created by TAE IL on 2021/11/02.
//

import UIKit

class Page2Controller: UIViewController {
    
    var current = 3
    
    @IBOutlet var imgView: UIImageView!
    @IBOutlet var movePage: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    
    
    @IBAction func leftBtn(_ sender: UIButton) {
        current = current - 1
        // 1보다 작아지면 순환 시켜줌
        if current < 1 {
            current = 6
            let alert = UIAlertController(title: "", message: "이전 사진이 없어요", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "확인", style: .default){
                action in
            })
            self.present(alert, animated: true, completion: nil)
        }
        imgView.image = UIImage(named: String(current) + ".png")
    }

    @IBAction func rightBtn(_ sender: UIButton) {
        current = current + 1
        imgView.image = UIImage(named: String(current) + ".png")
        if current > 6 {
            current = 1
            let alert = UIAlertController(title: "", message: "다음 사진이 없어요", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "확인", style: .default){
                action in
            })
            self.present(alert, animated: true, completion: nil)
        }
        imgView.image = UIImage(named: String(current) + ".png")
    }

    
    
   
    @IBAction func movePage3(_ sender: UIButton) {
        guard let go = self.storyboard?.instantiateViewController(withIdentifier: "page3")else {
             return
         }
         self.present(go, animated: true)
    }
    
    // 뒤로가기 버튼 처리
    @IBAction func backAct(_ sender: UIButton) {
        self.presentingViewController?.dismiss(animated: true)
    }
    
}
