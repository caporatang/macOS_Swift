//
//  ViewController.swift
//  day04
//
//  Created by TAE IL on 2021/11/03.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var underTimeLabel: UILabel!
    @IBOutlet var nowTimeLabel: UILabel!
    var count = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        let inteval = 1.0
        let timeSelector : Selector = #selector(ViewController.updateTime)
        
        Timer.scheduledTimer(timeInterval: inteval, target: self, selector: timeSelector, userInfo: nil, repeats: true)
        view.backgroundColor = UIColor.yellow
        
    }
    
    @objc func updateTime(){
        //날짜, 시각 가지고와서
        // 위의 라벨 현재시각 부분에 text로넣어줄 예정
        
        
        // 객체 생성
       let date = NSDate()
        var formatter = DateFormatter()
        formatter.dateFormat = "yy-MM-dd HH:mm EEE"
        nowTimeLabel.text = "현재시각: " + formatter.string(from: date as Date)
        
        // 10초후에 배경색을 바꾸세요
        if count >= 10 {
            view.backgroundColor = UIColor.brown
        }
        // 15초후에 경고창을 띄워보세요
        if count == 15 {
            let alert = UIAlertController(title: "알림", message: String(count) + "초가 지났어요 ", preferredStyle: .alert)
                    alert.addAction(UIAlertAction(title: "확인", style: .default) { [self] action in
                    })
                    self.present(alert, animated: true, completion: nil)
        } //  if count == 15
        
        // 20이면 페이지를 넘기세요
        if count == 20{
            guard let go = self.storyboard?.instantiateViewController(withIdentifier: "page2")else {
                 return
             }
             self.present(go, animated: true)
        }
    }
    
    
    @IBAction func changeDatePicker(_ sender: UIDatePicker) {
        // 선택한 정보들이 들어있음
        let datePickerView = sender
        print(datePickerView.date)
        
        // 객체 생성
        var formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd HH:mm EEE"
        underTimeLabel.text = formatter.string(from: datePickerView.date)
        
        
        
        
        
        
    }
    
    
    
    
}

