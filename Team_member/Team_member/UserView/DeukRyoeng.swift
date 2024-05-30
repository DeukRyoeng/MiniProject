//
//  DeukRyoeng.swift
//  Team_member
//
//  Created by DEUKRYEONG LEE on 5/30/24.
//

import UIKit

class DeukRyoengVC: ViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    @IBAction func backBtn(_ sender: UIButton) {
        print("called - DeukRyoengVC: click Back Btn!! ")
        self.presentingViewController?.dismiss(animated: true)
    }
    
    @IBAction func velog_Btn(_ sender: UIButton) {
        print("called - DeukRyoengVC: click Velog Btn!! ")
    
    }
}
