//
//  Page33Controller.swift
//  day03
//
//  Created by TAE IL on 2021/11/02.
//

import UIKit

class Page33Controller: UIViewController {
  
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    

    
    
    
    @IBAction func img1BtnMove(_ sender: UIButton) {
        guard let movePage4 = self.storyboard?.instantiateViewController(withIdentifier: "page44")as? Page4Controller else {
             return
         }
        movePage4.imgName = "1.png"
         self.present(movePage4, animated: true)
    }
    
    
    
    @IBAction func img2BtnMove(_ sender: UIButton) {
        guard let movePage4 = self.storyboard?.instantiateViewController(withIdentifier: "page44")as? Page4Controller else {
             return
         }
        movePage4.imgName = "2.png"
         self.present(movePage4, animated: true)
    }
    
    
    @IBAction func img3BtnMove(_ sender: UIButton) {
        guard let movePage4 = self.storyboard?.instantiateViewController(withIdentifier: "page44")as? Page4Controller else {
             return
         }
        movePage4.imgName = "3.png"
         self.present(movePage4, animated: true)
    }
    
  
    @IBAction func img4BtnMove(_ sender: UIButton) {
        guard let movePage4 = self.storyboard?.instantiateViewController(withIdentifier: "page44")as? Page4Controller else {
             return
         }
        movePage4.imgName = "4.png"
         self.present(movePage4, animated: true)
    }
    @IBAction func backAct(_ sender: UIButton) {
        self.presentingViewController?.dismiss(animated: true)
    }
}
