//
//  ViewController.swift
//  day03
//
//  Created by TAE IL on 2021/11/02.
//

import UIKit

class ViewController: UIViewController {
    var imgOn : UIImage?
    var imgOff : UIImage?
    var isZoom = false
    @IBOutlet var imgview: UIImageView!
    
    @IBOutlet var btnResize: UIButton!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // 이미지 객체 생성
        imgOn = UIImage(named: "lamp_on.png")
        imgOff = UIImage(named: "lamp_off.png")
        //이미지 교체 하기
        imgview.image = imgOn
    }

    @IBAction func movePage2(_ sender: UIButton) {
        guard let go2 = self.storyboard?.instantiateViewController(withIdentifier: "page2")else {
             return
         }
         self.present(go2, animated: true)
    }
    
    
    
    
    @IBAction func btnResizeImage(_ sender: UIButton) {
        // 사이즈 재설정할때 사용할 변수
        let scale : CGFloat = 2
        var newWidth : CGFloat = 0
        var newHeight : CGFloat = 0
        
        
        // 확대 버튼을 눌렀을때 버튼에 글씨를 바꿔보자
        // 전역변수에 flase를 기본값으로 넣어 놨기 떄문에 false이면 눌렀을때 확대로 바꿈
        if isZoom{
            btnResize.setTitle("확대", for: .normal)
        newWidth = imgview.frame.width / scale // 축소하면 기존 길이와 높이를 2로 나눠줌
        newHeight = imgview.frame.height / scale
        } else{
            btnResize.setTitle("축소", for: .normal)
            newWidth = imgview.frame.width * scale // 축소하면 기존 길이와 높이를 2로 나눠줌
            newHeight = imgview.frame.height * scale
        }
        
        isZoom = !isZoom
        //사이즈를 담당하는 객체를 생성한것이다
        imgview.frame.size = CGSize(width: newWidth, height: newHeight)

    }
    
    
    @IBAction func switchImageOnOff(_ sender: UISwitch) {
        //스위치를 끈상태에서 다시 켰을때 켜지게 처리해보자
        if sender.isOn{
            // 스위치를 온했을때 꺼진 이미지가 들어가게
            imgview.image = imgOn
        } else{
            // 스위치를 오프했을때 꺼진 이미지가 들어가게
            imgview.image = imgOff
        }
        
        
        
        
    }
    
    
    
    
}

