//
//  Page3Controller.swift
//  day04
//
//  Created by TAE IL on 2021/11/08.
//

import UIKit
import WebKit

class Page3Controller: UIViewController {

    
    @IBOutlet var txtUrl: UITextField!
    @IBOutlet var myWebView: WKWebView!
    
    func loadWebPage(_ url: String){
        let myUrl = URL(string: url)
        let myRequest = URLRequest(url: myUrl!)
        myWebView.load(myRequest)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        loadWebPage("http://www.youtube.com")
    }
    
    @IBAction func btnLoadHtml(_ sender: UIButton) {
    let htmlString = """
            <h1> HTML String </h1>
            <p> String 변수를 이용한 웹페이지 </p>
            <p><a href=\"http://www.daum.net">2sam</a>으로 이동</p>
        """
        
        myWebView.loadHTMLString(htmlString, baseURL: nil)

    }
    
    
    
    @IBAction func btnFileLoad(_ sender: UIButton) {
        let filePath = Bundle.main.path(forResource: "htmlView2", ofType: "html")
                //let myUrl = URL(fileURLWithPath: filePath!)
            let myUrl = URL(fileURLWithPath: filePath!)
                let myRequest = URLRequest(url: myUrl)
                myWebView.load(myRequest)


    }
    
    @IBAction func btnSite1(_ sender: UIButton) {
        loadWebPage("http://www.naver.com")
    }
    
    
    
    
    @IBAction func btnbtn1(_ sender: UIBarButtonItem) {
    }
    
    
    
    @IBAction func btnbtn2(_ sender: UIBarButtonItem) {
    }
    
    
    
    @IBAction func btn3(_ sender: UIBarButtonItem) {
    }
    
    
    
    @IBAction func btn4(_ sender: UIBarButtonItem) {
    }
    
    
    
    
    
    
}
