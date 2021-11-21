//
//  DetailViewController.swift
//  day06
//
//  Created by TAE IL on 2021/11/10.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet var imgView: UIImageView!
    @IBOutlet var lblItem: UILabel!
    var receiveItem = ""
    var imgItem = ""
    
    override func viewDidLoad() {
            super.viewDidLoad()

            lblItem.text = receiveItem
            imgView.image = UIImage(named: imgItem)
        }
        
    func receiveItem(_ item: String, _ itemImg: String)  {
            receiveItem = item
            imgItem = itemImg
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
