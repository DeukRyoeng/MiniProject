//
//  jinKyuView.swift
//  Team_member
//
//  Created by DEUKRYEONG LEE on 5/30/24.
//

import UIKit

class JinKyuView: ViewController {
    
    override func viewDidLoad() {
        //viewDidload란 화면이 보여지기전에 실행 시킬수 있는 코드를 작업 하는 영역
    }
    
    @IBAction func backBtn(_ sender: UIButton) {
        self.presentingViewController?.dismiss(animated: true)
    }
}
