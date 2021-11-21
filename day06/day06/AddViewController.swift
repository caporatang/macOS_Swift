//
//  AddViewController.swift
//  day06
//
//  Created by TAE IL on 2021/11/10.
//

import UIKit

class AddViewController: UIViewController {

    
    @IBOutlet var tfAddItem: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
   
    @IBAction func addBtn(_ sender: UIButton) {
        var text = tfAddItem.text!
        items.append(text)
        itemsImageFile.append("pencil.png")
        tfAddItem.text = ""
        navigationController?.popViewController(animated: true)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
