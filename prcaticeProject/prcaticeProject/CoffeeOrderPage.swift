//
//  CoffeeOrderPage.swift
//  prcaticeProject
//
//  Created by TAE IL on 2021/11/04.
//

import UIKit

class CoffeeOrderPage: UIViewController {
    var loginId = ""
    
    
    @IBOutlet var priceLabel: UILabel!
    @IBOutlet var infoLabel: UILabel!
    
    
    @IBOutlet var countLabel: UILabel!
    var count = 0
    var price = 0
    var sum = 0
    override func viewDidLoad() {
        super.viewDidLoad()

        infoLabel.text = String(loginId) + "님 환영합니다"
    }
    @IBAction func btnPlus(_ sender: UIButton) {
        count = count + 1
        price = 3000 * count
        countLabel.text = String(count)
        priceLabel.text = String(price) + "원"
    }
    @IBAction func btnMin(_ sender: UIButton) {
        count = count - 1
        price = 3000 * count
        countLabel.text = String(count)
        priceLabel.text = String(price) + "원"
    }
    @IBAction func btnPick(_ sender: UIButton) {
        guard let reser = self.storyboard?.instantiateViewController(withIdentifier: "page3")as? Reservation else {
             return
         }
        reser.loginId = loginId
        reser.count = count
        reser.price = price
         self.present(reser, animated: true)
        
    }
}
