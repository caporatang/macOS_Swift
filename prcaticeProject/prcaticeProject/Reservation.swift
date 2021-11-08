//
//  Reservation.swift
//  prcaticeProject
//
//  Created by TAE IL on 2021/11/04.
//

import UIKit

class Reservation: UIViewController {
    var loginId = ""
    var count = 0
    var price = 0
    
    @IBOutlet var datePicker: UIDatePicker!
    @IBOutlet var countPriceLabel: UILabel!
    @IBOutlet var reserLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

    reserLabel.text = loginId + "님 주문하신 커피는 아이스아메리카노"
        countPriceLabel.text = String(count) + "잔 결제금액은" + String(price) + "입니다"
        
    }
    
    @IBAction func reserbtnAct(_ sender: UIButton) {
       
            
            var formatter = DateFormatter()
            formatter.dateFormat = "HH:mm EEE"
            
            let alert = UIAlertController(title: "픽 업", message: formatter.string(from: datePicker.date) + " 픽업신청이 완료 되었습니다",
                                          preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "확인", style: .default){
            action in
                guard let reser = self.storyboard?.instantiateViewController(withIdentifier: "page4") else {
                     return
                 }
                 self.present(reser, animated: true)
            })
            self.present(alert, animated: true, completion: nil)
        
        
        
        
        }
    }
    
    //coffeeMan
    


