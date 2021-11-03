//
//  ViewController.swift
//  test03
//
//  Created by TAE IL on 2021/10/29.
//

import UIKit

class ViewController: UIViewController {
  
    @IBOutlet var helloLabel: UILabel!
    @IBOutlet var swiftLabel: UILabel!
    @IBOutlet var sendBtn: UIButton!
    @IBOutlet var textAge: UITextField!
    @IBOutlet var textName: UITextField!
    
   
    var result2 = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
      
    }

    
        
        
    @IBAction func sendBtn(_ sender: UIButton) {
        
        var n4 = Int(textAge.text!)
        result2 = n4! + 1
        swiftLabel.text = "내년 나이는" + String(result2)
        
        helloLabel.text = textName.text! + "의 나이는" + textAge.text! + "입니다"
 
    }
    
    
 
    
  
   
}

