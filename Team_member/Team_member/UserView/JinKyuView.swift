//
//  jinKyuView.swift
//  Team_member
//
//  Created by DEUKRYEONG LEE on 5/30/24.
//

import UIKit
import SafariServices
class JinKyuView: ViewController {
    
    @IBOutlet weak var MYImageView: UIImageView!
    @IBOutlet weak var Name: UILabel!
    @IBOutlet weak var Age: UILabel!
    @IBOutlet weak var Hobby: UILabel!
    @IBOutlet weak var button: UIButton!
   
    override func viewDidLoad() {
        super.viewDidLoad()
        //viewDidload란 화면이 보여지기전에 실행 시킬수 있는 코드를 작업 하는 영역
    }
    
    @IBAction func VelogButton(_ sender: Any) {
        if let url = URL(string: "https://velog.io/@vvip/posts"){
            UIApplication.shared.open(url)
        }
    }
    @IBAction func backBtn(_ sender: UIButton) {
        self.presentingViewController?.dismiss(animated: true)
    }
}
