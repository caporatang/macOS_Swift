//
//  oper.swift
//  test03
//
//  Created by TAE IL on 2021/10/29.
//

import UIKit

class Oper: UIViewController {

    @IBOutlet var num1Text: UITextField!
    @IBOutlet var num2Text: UITextField!
    @IBOutlet var resultText: UILabel!
    
    @IBOutlet var btnAdd: UIButton!
    @IBOutlet var btnMin: UIButton!
    @IBOutlet var btnMul: UIButton!
    @IBOutlet var btnDivision: UIButton!
    
    var result = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    @IBAction func btnAddClick(_ sender: UIButton) {
        var n1 = Int(num1Text.text!)
        var n2 = Int(num2Text.text!)
        result = n1! + n2!
        resultText.text = String(result)

    }
    @IBAction func btnMinClick(_ sender: UIButton) {
        var n1 = Int(num1Text.text!)
        var n2 = Int(num2Text.text!)
        result = n1! - n2!
        resultText.text = String(result)
    }
    @IBAction func btnDivisionClick(_ sender: UIButton) {
        
        var n1 = Int(num1Text.text!)
        var n2 = Int(num2Text.text!)
        result = n1! / n2!
        resultText.text = String(result)
    }
    @IBAction func btnMultiClick(_ sender: UIButton) {
        var n1 = Int(num1Text.text!)
        var n2 = Int(num2Text.text!)
        result = n1! * n2!
        resultText.text = String(result)

    }
}

