//
//  Page4Controller.swift
//  day03
//
//  Created by TAE IL on 2021/11/02.
//

import UIKit

class Page4Controller: UIViewController {
    var imgName = ""
    @IBOutlet var imgView: UIImageView!
    @IBOutlet var imgLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        imgView.image = UIImage(named: imgName)
        imgLabel.text = imgName
    }
    

    

}
